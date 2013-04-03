class AllowedAnswer < ActiveRecord::Base
  attr_accessible :question_id, :body

  belongs_to :question
  has_one :poll, :through => :question
  has_many :responses, :dependent => :destroy

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Answer choice destroyed'
  end
end