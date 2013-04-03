class Response < ActiveRecord::Base
  attr_accessible :respondent_id, :allowed_answer_id
  validate :respondent_is_not_poll_creator, :respondent_has_not_already_answered

  belongs_to :allowed_answer
  # SQL: SELECT allowed_answers.*
  # =>     FROM allowed_answers
  # =>    WHERE allowed_answers.id = ?, ? = self.question_id
  has_one :question, :through => :allowed_answer
  has_one :poll, :through => :allowed_answer

  belongs_to :respondent, :class_name => "User"
  # SQL: SELECT users.*
  # =>     FROM users
  # =>    WHERE user.id = self.respondent_id

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Reponse destroyed'
  end

  def respondent_is_not_poll_creator
    if self.poll.creator_id == self.respondent_id
      errors[:respondent_id] << "can't be the poll creator"
    end
  end

  def respondent_has_not_already_answered
    double_answer =
      self.question.responses.any? do |response|
        response.respondent_id == self.respondent_id
      end
    if double_answer
      errors[:respondent_id] << "can't answer the same question twice"
    end
  end
end