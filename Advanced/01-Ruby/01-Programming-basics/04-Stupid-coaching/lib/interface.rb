require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "What's up son?"
print "> "
student_message = gets.chomp

while student_message != "I am going to work right now SIR !" do
  puts coach_answer(student_message)
  print "> "
  student_message = gets.chomp
end