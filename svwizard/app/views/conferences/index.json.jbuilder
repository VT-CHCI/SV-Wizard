json.array!(@conferences) do |conference|
  json.extract! conference, :id, :name, :short_name, :year, :email, :volunteers, :volunteer_hours, :start_date, :end_date, :bid_day, :status, :maintenance
  json.url conference_url(conference, format: :json)
end
