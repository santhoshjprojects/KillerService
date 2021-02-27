class TasksController < ApplicationController
	def index
	  tasks = Task.order("created_at desc")
      render json: tasks
	end

	def create
		task = Task.create(task_param)
		render json: task
	end

	def show
		task = Task.find(params[:id])
		render json: task
	end

	def update
	  task = Task.find(params[:id])
      task.update_attributes(block_params)
      render json: task
	end

	def destroy
		task = Task.find(params[:id])
		task.destroy

		head :no_content, status: :ok
	end

    private 
    def task_param
    	params.require(:task).permit(:name, :description, :done)
    end
end
