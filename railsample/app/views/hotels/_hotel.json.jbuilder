json.extract! hotel, :id, :title, :review, :rating, :description, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
