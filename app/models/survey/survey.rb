module Survey
  class Survey < ActiveRecord::Base
    has_many :questions
  end
end
