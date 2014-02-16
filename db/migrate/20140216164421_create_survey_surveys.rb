class CreateSurveySurveys < ActiveRecord::Migration
  def change
    create_table :survey_surveys do |t|
      t.string :title

      t.timestamps
    end
  end
end
