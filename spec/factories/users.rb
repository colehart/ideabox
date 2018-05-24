FactoryBot.define do
  factory :user do
    email FFaker::InternetSE.unique.safe_email
    password_digest FFaker::InternetSE.unique.password
    role 0
  end

  factory :admin, class: User do
    email FFaker::InternetSE.unique.safe_email
    password_digest FFaker::InternetSE.unique.password
    role 1
  end
end
