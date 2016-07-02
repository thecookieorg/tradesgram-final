json.array!(@works) do |work|
  json.extract! work, :id, :name, :description, :start_date, :end_date
  json.url work_url(work, format: :json)
end
