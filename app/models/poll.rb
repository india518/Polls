class Poll < ActiveRecord::Base
  attr_accessible :creator_id

  has_many :questions
  # SQL: SELECT questions.*
  # =>     FROM questions
  # =>    WHERE question.poll_id = ?, ? = self.id

  belongs_to :creator, :class_name => "User"
  # SQL: SELECT users
  # =>     FROM users
  # =>    WHERE users.id = ?, ? = poll.creator_id

end