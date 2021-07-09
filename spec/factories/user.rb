FactoryBot.define do
  factory :user do
    nickname {'test'}
    email {'test@tyg.com'}
    password {'123456'}
    password_confirmation {password}
  end
end