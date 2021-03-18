json.extract! post, :id, :Title, :Tag, :Content, :Author, :created_at, :updated_at
json.url post_url(post, format: :json)
