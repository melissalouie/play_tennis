json.array!(@sayings) do |saying|
  json.extract! saying, :id, :text
  json.url saying_url(saying, format: :json)
end
