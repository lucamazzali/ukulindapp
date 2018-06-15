json.extract! event, :id, :event_type_id, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
