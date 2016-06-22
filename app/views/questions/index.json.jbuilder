json.array!(@questions) do |question|
  json.extract! question, :id, :name, :body
  json.url question_url(question, format: :json)
end
