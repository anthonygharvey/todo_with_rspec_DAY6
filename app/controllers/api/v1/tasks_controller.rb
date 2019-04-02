module Api::V1
	class TasksController < ApiController
		def index
			@tasks = Task.all
			render json: @tasks # uses task_serializer to create the JSON object
			# render json: @tasks.to_json(only: [:name, :priority, :due_date])
		end

	end
end
