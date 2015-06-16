FactoryGirl.define do
  
  factory :null_email, class: User do

    email nil
    password "password"

  end

  factory :oversize_email, class: User do

    email "a" * 51 + "@test.com"
    password "password"

  end

  factory :val_email, class: User do

  		email "/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i"
  		password "password"
  end

  factory :null_password, class: User do

    email "test@test.com"
    password ""

  end

  factory :oversize_password, class: User do

  	email "test@test.com"
  	password "a" * 51

  end

  factory :short_password, class: User do

  	email "test@test.com"
  	password "a" * 5

  end

  factory :valid_user, class: User do

    email "test@test.com"
    password "password"
    password_confirmation "password"

  end

end
