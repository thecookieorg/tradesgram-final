json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :city, :deadline, :active
  json.url project_url(project, format: :json)
end
