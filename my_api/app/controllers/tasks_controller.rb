class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  include ActionController::MimeResponds
  include ActionController::Helpers
  include ActionController::Cookies
  # GET /tasks
  def index
    @tasks = Task.all
  # respond_to do |format|
  #   format.json {render json: @tasks}
  #   format.xml {render xml: @tasks}
  # end
    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :completed, :order)
    end
end
