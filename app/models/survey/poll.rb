module Survey
  class Poll < ActiveRecord::Base
    has_many :questions
  end
end
