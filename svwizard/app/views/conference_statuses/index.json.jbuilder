json.array!(@conference_statuses) do |conference_status|
  json.extract! conference_status, :id, :name
  json.url conference_status_url(conference_status, format: :json)
end
