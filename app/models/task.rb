class Task < ApplicationRecord
    validates :name, presence: true
    attribute :start_time, :datetime

  def self.completed
    where(completed: true)
  end

  def self.incomplete
    where(completed: false)
  end

  def time_frame
    return unless time_start && time_end
    "#{time_start.strftime('%-I:%M%p')} - #{time_end.strftime('%-I:%M%p')}"
  end

end
