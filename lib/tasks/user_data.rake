namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(
                 email: "admin@test.com",
                 password: "password",
                 password_confirmation: "password")
    admin.toggle!(:admin)
    admin.toggle!(:accepttos)
  end
end