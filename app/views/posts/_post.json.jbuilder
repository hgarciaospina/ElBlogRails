json.extract! post, :id, :title, :content, :status, :url, :created_at, :updated_at
json.url post_url(post, format: :json)