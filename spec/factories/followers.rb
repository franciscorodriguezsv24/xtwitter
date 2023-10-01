FactoryBot.define do
  factory :follower do
    follower_id { association :user }
    followee_id { association :user }
  end
end
