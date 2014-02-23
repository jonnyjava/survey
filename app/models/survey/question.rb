module Survey
  class Question < ActiveRecord::Base
    belongs_to :poll
    scope :by_poll, ->(poll){ where(poll: poll) }
  end
end
