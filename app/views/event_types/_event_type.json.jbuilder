json.extract! event_type, :id, :group_id, :name, :created_at, :updated_at
json.url event_type_url(event_type, format: :json)
