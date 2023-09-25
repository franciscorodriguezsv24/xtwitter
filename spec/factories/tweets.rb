FactoryBot.define do
  factory :tweet do
    body { "MyText" }
    user { nil }
    retweet { false }
    quote_id { 1 }

  end
end
