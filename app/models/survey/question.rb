module Survey
  class Question < ActiveRecord::Base
    belongs_to :poll
    has_many :question_options, dependent: :destroy
    scope :by_poll, ->(poll){ where(poll: poll) }
  end
end
