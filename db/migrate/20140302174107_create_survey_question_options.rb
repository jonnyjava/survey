class CreateSurveyQuestionOptions < ActiveRecord::Migration
  def change
    create_table :survey_question_options do |t|
      t.integer :question_id
      t.string :title
      t.timestamps
    end
  end
end
