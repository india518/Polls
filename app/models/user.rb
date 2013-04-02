class User < ActiveRecord::Base
  has_many :polls, :foreign_key => "creator_id"
  has_many :responses, :foreign_key => "respondent_id"

end