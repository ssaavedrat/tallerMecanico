json.extract! vehicle, :id, :user_id, :plate, :brand, :model, :year, :color, :car_issue, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
