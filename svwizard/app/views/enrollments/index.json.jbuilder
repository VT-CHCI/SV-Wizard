json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :conference_id, :user_id, :enrollment_status_id, :lottery, :comment
  json.url enrollment_url(enrollment, format: :json)
end
