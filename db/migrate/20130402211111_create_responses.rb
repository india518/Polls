class CreateResponses < ActiveRecord::Migration
  def up
    create_table :responses do |t|
      t.integer :question_id
      t.integer :respondent_id
      t.integer :allowed_answer_id
    end
  end

  def down
    drop_table :responses
  end

end
