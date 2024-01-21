# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Category.create!(heading: 'Blah', body: "Test", display:true)

User.new(
	:email 								 => "admin@example.com",
	:username 						 => "admin",
	:admin 								 => true,
	:password 						 => "admin@123",
	:password_confirmation => "admin@123"
).save!

5.times do |i|
	pro = Product.new(
				name: "Product",
				description: "Description",
				price: 130.99,
				featured: true,
				category: Category.find(1)
			)
	# pro.image.attach(io: open('~/Downloads/photo.jpg'), filename: "#{i}_image.jpg")
	if i == 3
		pro.featured = true
	end
	pro.save
end
