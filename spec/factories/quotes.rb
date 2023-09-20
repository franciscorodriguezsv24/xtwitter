FactoryBot.define do
  factory :quote do
    mention { "MyText" }
    tweet { nil }
  end
end
