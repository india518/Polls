class Question < ActiveRecord::Base
  has_many :responses
  belongs_to :poll

end