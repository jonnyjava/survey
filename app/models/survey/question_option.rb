module Survey
  class QuestionOption < ActiveRecord::Base
  	belongs_to :question

  end
end
