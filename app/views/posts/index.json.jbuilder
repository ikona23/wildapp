json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :owner, :parking, :urgency, :budget, :quote, :how_did_you_here_about_us, :publish_date, :user_id
  json.url post_url(post, format: :json)
end
