hashvar = {
	students:[
		{
			first_name:"Brian",
			last_name:"Boyd"
		}, 
		{ 
			first_name:"Kevin",
			last_name:"Collins"
		}
	],
	teachers:[
		{
			first_name:"Nick",
			last_name:"Bucciarelli"
		},
		{
			first_name:"Calvin",
			last_name:"Webster"
		}
	],
	company:"The Iron Yard",
	founded:1900
}
# puts hashvar[:students][0]
# puts hashvar[:students][0]
puts hashvar[:students][0][:first_name]

# a = :hello# <---Symbol
# puts a
# hash.each do |key, value|
# 	puts hash[key]
# end