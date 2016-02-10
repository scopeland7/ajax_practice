class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create]
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
 

  # GET /tasks/new
  def new
    @task = Task.new
  end


  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.create(task_params)
  end

  


  private
    # Use callbacks to share common setup or constraints between actions.
    def all_tasks
      @tasks = Task.all
    end

    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description, :deadline)
    end
end
