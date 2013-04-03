class AllowedAnswer < ActiveRecord::Base
  attr_accessible :question_id, :body

  belongs_to :question
  has_one :poll, :through => :question
  has_many :responses
end