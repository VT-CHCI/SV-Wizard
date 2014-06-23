json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :task_id, :hours, :comment
  json.url assignment_url(assignment, format: :json)
end
