class ChangeAllowedAnswers < ActiveRecord::Migration
  def change
    remove_column :allowed_answers, :response_id
    add_column :allowed_answers, :question_id, :integer
  end
end
