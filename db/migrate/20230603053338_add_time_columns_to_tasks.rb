class AddTimeColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :time_start, :time
    add_column :tasks, :time_end, :time

    Task.all.each do |task|
      start_time = ActiveSupport::TimeZone.parse(task.start_time.strftime("%H:%M"))
      end_time = ActiveSupport::TimeZone.parse(task.end_time.strftime("%H:%M"))
      task.update(time_start: start_time.change(year: 2000, month: 1, day: 1), time_end: end_time.change(year: 2000, month: 1, day: 1))
    end

    remove_column :tasks, :start_time
    remove_column :tasks, :end_time
  end
end
