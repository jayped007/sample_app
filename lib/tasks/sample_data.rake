namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Jay Pedersen", email: "jaypedersen@yahoo.com",
                 password: "foobar", password_confirmation: "foobar")
    admin.toggle!(:admin)
    User.create!(name: "Kathy Pedersen", email: "katmped@aol.com",
                 password: "foobar", password_confirmation: "foobar")
    User.create!(name: "Dan Pedersen", email: "danped@aol.com",
                 password: "foobar", password_confirmation: "foobar")
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
