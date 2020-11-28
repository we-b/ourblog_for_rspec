FactoryBot.define do
  factory :post do
    title {Faker::Lorem.sentence}
    content {Faker::Lorem.sentence}
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png.jpg'), filename: 'test_image.png.jpg')
    end
  end
end
