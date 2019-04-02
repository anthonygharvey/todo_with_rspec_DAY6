class TaskSerializer < ActiveModel::Serializer
	attributes :name, :priority, :due_date
	belongs_to :user
	
	def due_date
		object.due_date.strftime('%a, %b %d')
	end
end
