10.times do
  User.create name: FFaker::Name.name, email: FFaker::Internet.email, password: "123456", password_confirmation: "123456"
end
