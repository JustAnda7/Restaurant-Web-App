json.extract! reservation, :id, :name, :phone, :resdate, :restime, :people, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
