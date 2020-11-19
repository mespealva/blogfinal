json.extract! articule, :id, :title, :content, :user_id, :created_at, :updated_at
json.url articule_url(articule, format: :json)
