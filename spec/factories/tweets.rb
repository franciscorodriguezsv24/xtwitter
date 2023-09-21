FactoryBot.define do
  factory :tweet do
    body { "MyText" }
    author { nil }
    retweet { false }
    quote_id { "MyString" }
    bookmark { nil }
    like { nil }
  end
end
