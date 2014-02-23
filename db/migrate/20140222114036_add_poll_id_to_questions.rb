class AddPollIdToQuestions < ActiveRecord::Migration
  def change
    add_column :survey_questions, :poll_id, :integer
  end
end
