json.extract! user, :id, :first_name, :last_name_string, :address, :birthday, :phone, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
