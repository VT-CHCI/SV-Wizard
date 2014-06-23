json.array!(@enrollment_statuses) do |enrollment_status|
  json.extract! enrollment_status, :id, :name
  json.url enrollment_status_url(enrollment_status, format: :json)
end
