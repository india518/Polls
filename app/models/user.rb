class User < ActiveRecord::Base
  attr_accessible :name

  has_many :polls, :foreign_key => "creator_id", :dependent => :destroy
  # SQL: SELECT polls.*
  # =>     FROM polls
  # =>    WHERE polls.creator_id = ?, ? = self.id
  has_many :responses, :foreign_key => "respondent_id"
  # SQL: SELECT responses.*
  # =>     FROM responses
  # =>    WHERE responses.respondent_id = ?, ? = self.id

end