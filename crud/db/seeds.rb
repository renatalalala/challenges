NUM = 5

NUM.times do 
	Note.create(title: Faker::Lorem.sentence(1), content: Faker::Lorem.sentence(3))
end
