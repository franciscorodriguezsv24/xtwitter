FactoryBot.define do
  factory :tweet do
    body { "MyText" }
<<<<<<< HEAD
    user { nil }
    retweet { false }
    quote_id { 1 }
=======
    author { nil }
    retweet { false }
    quote_id { "MyString" }
    bookmark { nil }
    like { nil }
>>>>>>> master
  end
end
