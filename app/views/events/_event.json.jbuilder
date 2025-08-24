json.extract! event, :id, :title, :starts_at, :ends_at, :location, :description, :capacity, :created_at, :updated_at
json.url event_url(event, format: :json)
