json.array!(@tasks) do |task|
  json.extract! task, :id, :conference_id, :name, :description, :location_id, :day, :start_time, :end_time, :slots, :hours, :priority, :invisible
  json.url task_url(task, format: :json)
end
