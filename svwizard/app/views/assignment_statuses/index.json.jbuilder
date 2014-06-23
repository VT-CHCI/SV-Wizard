json.array!(@assignment_statuses) do |assignment_status|
  json.extract! assignment_status, :id, :name
  json.url assignment_status_url(assignment_status, format: :json)
end
