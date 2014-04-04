puts "how big is the questionaire #{example_questionnaire.length}"
i = example_questionnaire.length 
i.times do
	puts "1"
end
example_questionnaire.length do |i| 
puts example_questionnaire[:question][i]
puts example_questionnaire[:answer_choices][i]
puts "Type A, B, C, or D"
useranswer = gets.chomp
if useranswer == example_questionnaire[:answer][i]
	correct_answers += 1
else
wrong_answers += 1
end

def grading_time(correct_answers,wrong_answers)
total_questions = correct_answers + wrong_answers
grade = ((correct_answers / total_questions) * 100)
puts "Your grade is: #{grade}"
end
end

example_questionnaire.each do |question|
	puts question[:question]
end

10.times do
end






puts "how big is the questionaire #{example_questionnaire.length}"
i=1
puts example_questionnaire[:question][:answer][i]
example_questionnaire.each do |i| 
	puts i
puts example_questionnaire[:question][:answer][i]
puts example_questionnaire[:answer_choices][i]
puts "Type A, B, C, or D"
useranswer = gets.chomp
if useranswer == example_questionnaire[:answer][i]
	correct_answers += 1
else
wrong_answers += 1
end
end

def grading_time(correct_answers,wrong_answers)
total_questions = correct_answers + wrong_answers
grade = ((correct_answers / total_questions) * 100)
puts "Your grade is: #{grade}"
end
