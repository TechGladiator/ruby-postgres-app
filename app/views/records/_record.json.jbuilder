json.extract! record, :id, :name, :address, :address_2, :city, :state, :zip, :purpose, :property_owner, :creation_date, :lat, :long, :import_id, :created_at, :updated_at
json.url record_url(record, format: :json)
