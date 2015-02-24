json.array!(@project9vks) do |project9vk|
  json.extract! project9vk, :id, :title, :about, :date, :attendance, :done
  json.url project9vk_url(project9vk, format: :json)
end
