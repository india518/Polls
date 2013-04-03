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

end