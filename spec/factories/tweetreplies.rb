FactoryBot.define do
  factory :tweetreply do
    tweet { nil }
    user { nil }
    body { "MyText" }
  end
end
