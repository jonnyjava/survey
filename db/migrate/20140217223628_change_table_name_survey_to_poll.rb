class ChangeTableNameSurveyToPoll < ActiveRecord::Migration
  def change
    rename_table :survey_surveys, :survey_polls
  end
end
