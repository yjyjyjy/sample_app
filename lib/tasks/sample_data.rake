namespace :db do
	desc "Fill data with sample data"
	task populate: :environment do
		User.create!(name:"The Real SlimShady",
			email:"slimshady@aftermath.com",
			password:"root8miles",
			password_confirmation:"root8miles",
			admin:true)

		99.times do |n|
			name = Faker::Name.name
			email = "simshady-#{n+1}@aftermath.com"
			password = "password"
			User.create!(name:name, 
				email:email,
				password:password,
				password_confirmation:password)
		end
	end
end