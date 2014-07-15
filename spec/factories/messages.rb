FactoryGirl.define do
  factory :message  do
    title "Hi,可否交个朋友？"
    body "Hi,可否交个朋友？看了你的博客，感觉我们经历很像。"
    guest_email "guest@example.com"
    guest_nickname "夜风听雨"
  end
end