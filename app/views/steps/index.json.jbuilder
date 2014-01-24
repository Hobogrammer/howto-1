json.array!(@steps) do |step|
  json.extract! step, :id, :instructions
  json.url step_url(step, format: :json)
end
