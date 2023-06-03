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
    "#{time_frame_start} - #{time_frame_end}" if time_frame_start && time_frame_end
  end

end
