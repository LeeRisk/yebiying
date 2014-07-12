json.array!(@messages) do |message|
  json.extract! message, :id, :title, :body, :user_id, :guest_email, :guest_nickname
  json.url message_url(message, format: :json)
end
