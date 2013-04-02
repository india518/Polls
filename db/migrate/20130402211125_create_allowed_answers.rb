class CreateAllowedAnswers < ActiveRecord::Migration
  def up
    create_table :allowed_answers do |t|
      t.integer :question_id
      t.text :body
    end
  end

  def down
    drop_table :allowed_answers
  end

end
