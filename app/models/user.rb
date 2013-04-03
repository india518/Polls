#REV: Overall the associations look good guys, if you named your tables differently
#REV: you may not have needed to state so many foreign_keys.

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