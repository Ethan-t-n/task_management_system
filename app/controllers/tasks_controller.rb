class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.order(completed: :asc)
    @tasks.each do |task|
      task.update(time_frame_start: DateTime.new(2023, 6, 3, 10, 0, 0), time_frame_end: DateTime.new(2023, 6, 3, 12, 0, 0)) if task.time_frame_start.nil?
  end

  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.time_start = Time.zone.parse(params[:task][:time_start]) if params.dig(:task, :time_start).present?
    @task.time_end = Time.zone.parse(params[:task][:time_end]) if params.dig(:task, :time_end).present?

    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      @task.time_start = Time.zone.parse(params[:task][:time_start]) if params[:task][:time_start].present?
      @task.time_end = Time.zone.parse(params[:task][:time_end]) if params[:task][:time_end].present?

      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  def clear_all
    Task.destroy_all
    redirect_to tasks_url, notice: 'All tasks were successfully cleared.'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :completed, :time_frame_start, :time_frame_end, :time_start, :time_end)
  end
end
