json.extract! appointment, :id, :slot_id, :user_id, :client, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
