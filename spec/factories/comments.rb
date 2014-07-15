FactoryGirl.define do
  factory :comment  do
    article
    body "加油！做最好的自己！你可以的"
    guest_nickname "夜风听雨"
  end
end