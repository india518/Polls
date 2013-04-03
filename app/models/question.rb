class Question < ActiveRecord::Base
  attr_accessible :poll_id, :body

  has_many :allowed_answers
  #SQL: SELECT allowed_answers.*
  # =>    FROM allowed_answers
  # =>   WHERE allowed_answers.question_id = ?, ? = self.id

  has_many :responses, :through => :allowed_answers
  # SQL: SELECT responses.*
  # =>     FROM responses
  # =>    WHERE responses.answer_id IN
  # =>  (SELECT allowed_answers.id
  # =>     FROM allowed_answers
  # =>    WHERE allowed_answers.question_id = ?), ? = self.id
  belongs_to :poll
  # SQL: SELECT polls
  # =>     FROM polls
  # =>    WHERE polls.id = ?, ? = self.poll_id

  def results
    #returns a hash where the key is the allowed_answer_id
    # and the value is the count.
    self.responses
      .select("responses.*, COUNT(*) AS answer_count")
      .group("allowed_answer_id")
      .map do |stuff|
        {stuff.allowed_answer_id => stuff.answer_count}
      end
  end

end