json.extract! user, :id, :full_name, :storage_id, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
