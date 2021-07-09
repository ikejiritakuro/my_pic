FactoryBot.define do
 
  factory :tweet do
    association :user 
    text {Faker::Lorem.sentence}
     

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('public/images/test_image3.png'), filename: 'test_image3.png')
    end
  end
end
