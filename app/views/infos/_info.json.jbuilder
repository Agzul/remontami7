json.extract! info, :id, :link, :title, :description, :keywords, :name, :body, :created_at, :updated_at
json.url info_url(info, format: :json)
