Factory.define :user do |user|
user.name
"arbaun"
user.email
"arbaun@example.com"
user.password
"tookar"
user.password_confirmation "tookar"
end
Factory.sequence :email do |n|
"person-#{n}@example.com"
end

