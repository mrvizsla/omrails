namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    10.times do |n|
      puts "[DEBUG] creating user #{n+1} of 10"
      name = Faker::Name.name
      email = "user-#{n+1}@example.com"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end

    User.all.each do |user|
      puts "[DEBUG]      uploading images for user #{user.id} of #{User.last.id}"
      10.times do |n|
        puts "[DEBUG]          image #{n+1} of 10 for user #{user.id}"
        image = File.open(Dir.glob(File.join(Rails.root, 'sample_images', '*')).sample)
        puts "[DEBUG]               STEP 001 DONE"
        description = %w(regal cute fast red hunter adorbable).sample
        puts "[DEBUG]               STEP 002 DONE"
        user.pins.create!(image: image, description: description)
        puts "[DEBUG]               STEP 003 DONE"
      end
    end
  end
end