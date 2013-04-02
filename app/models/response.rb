class Response < ActiveRecord::Base
  has_many :questions
  has_many :allowed_answers
  belongs_to :question
  belongs_to :respondent, :class_name => "User"
end