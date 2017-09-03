json.extract! new_collection, :id, :title, :description, :created_at, :updated_at
json.url new_collection_url(new_collection, format: :json)