# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = ["Mavil",
"Raunaq",
"Eapen",
"Nishad"]

user_list.each do |name|
	User.create(user_name: name)
end

ques_list = [["Animals","What is a sheep's young one called?",1],
			["Environment","Does biodegradable plastic exist?",2],
			["Science","Whats element 48?",3],
			["Finance","How to file tax returns?",4]]

ques_list.each do |ques_title,ques,user_id|
	Question.create(ques_title: ques_title,
				ques: ques,
				user_id: user_id)
end		

ans_list = [["Do it like this.",2,4,2],
			["Cadmium",10,3,3],
			["Lamb",3,1,4],
			["Yes,biodegradable plastic exists",5,2,1]]

ans_list.each do |ans,rating,q_id,u_id|
	Answer.create(content: ans,
					rating: rating,
					question_id: q_id,
					user_id: u_id)
end		