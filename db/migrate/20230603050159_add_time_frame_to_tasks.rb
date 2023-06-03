class AddTimeFrameToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :time_frame_start, :datetime
    add_column :tasks, :time_frame_end, :datetime
  end
end
