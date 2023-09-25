FactoryBot.define do
  factory :tweet_reply do
    comment { "MyText" }
    tweet { nil }
  end
end
