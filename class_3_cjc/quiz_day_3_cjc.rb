# hash with questions array inside contain questions answers answer choices

# simulate a multiple choice quiz

# depending on how much you get write will discuss precentage


# You are creating a module that can be used to take quizzes!

# After I'm done taking the quiz you will tell me how many quetions I got right. (Percentage is fine)

puts "Welcome to the Iron Yard Questionaire!"

correct_answers=0
wrong_answers=0

example_questionnaire = [
	{ 
		question: "How many floor lamps are in the Ruby Kitchen at the Iron Yard Charleston?",
		answer: "A",
		answer_choices: [
			"A. 4",
			"B. 5",
			"C. 6",
			"D. 7"
		]
	},
	{question: "What color is the Iron Yard logo on theironyard.com?",
		answer: "C",
		answer_choices: [
			"A. Yellow",
			"B. Blue",
			"C. Black",
			"D. Red"
		]
	},
	{question: "As of April 2, 2014 how many Locations does Iron Yard have?" ,
		answer: "B",
		answer_choices: [
			"A. 8",
			"B. 9",
			"C. 10",
			"D. 12"
		]
	},
	{question: "How many people are in the Iron Yard Charleston Academy for Ruby on Rails 2014 Q2?" ,
		answer: "C",
		answer_choices: [
			"A. 7",
			"B. 8",
			"C. 9",
			"D. 10"
		]
	},
	{question: "How many different types of coding classes does the Iron Yard offer?" ,
		answer: "D",
		answer_choices: [
			"A. 1",
			"B. 2",
			"C. 4",
			"D. 3"
		]
	},
	{question: "How many weeks are in an Iron Yard Course?" ,
		answer: "B",
		answer_choices: [
			"A. 9",
			"B. 12",
			"C. 14",
			"D. 15"
		]
	},
	{question: "Who is the 2014 Charleston Iron Yard Ruby on Rails instructor?" ,
		answer: "A",
		answer_choices: [
			"A. Nick",
			"B. Calvin",
			"C. Sally",
			"D. Eric"
		]
	},
	{question: "Who is the 2014 Charleston Iron Yard Front-End instructor?" ,
		answer: "D",
		answer_choices: [
			"A. Eric",
			"B. Nick",
			"C. Sally",
			"D. Calvin"
		]
	},
	{question: "In what city is the Iron Yard Charleston Located?" ,
		answer: "A",
		answer_choices: [
			"A. Mt. Pleasant",
			"B. Charleston",
			"C. North Charleston",
			"D. Goose Creek"
		]
	},
	{question: "What is GROK?" ,
		answer: "A",
		answer_choices: [
			"A. A conference with no heroes, just people hungry for tectonic shifts in thinking and doing.",
			"B. A type of Cider",
			"C. A Harry Potter Wand",
			"D. A unique growler"
		]
	},
]
puts "how big is the questionaire: #{example_questionnaire.length}"

example_questionnaire.each do |question_hash| 
puts question_hash[:question]
puts question_hash[:answer_choices]

puts "Type A, B, C, or D"
useranswer = gets.chomp.upcase

	if useranswer == question_hash[:answer]
		correct_answers += 1
		puts "You have #{correct_answers} Correct Answers"
		puts "You have #{wrong_answers} Wrong Answers"
	else
	wrong_answers += 1
	puts "You have #{correct_answers} Correct Answers"
	puts "You have #{wrong_answers} Wrong Answers"
	end
end

total_questions = correct_answers + wrong_answers
puts total_questions
grade = (correct_answers.to_f / total_questions.to_f) * 100.0
puts "Your grade is: #{grade}"






