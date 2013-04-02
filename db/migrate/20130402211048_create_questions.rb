class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.integer :poll_id
      t.text :body
    end
  end

  def down
    drop_table :questions
  end

end
