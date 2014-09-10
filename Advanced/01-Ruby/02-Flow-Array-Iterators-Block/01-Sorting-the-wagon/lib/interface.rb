require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  
  # TODO: Add the name we just gotto the students array
  students << name

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

students.pop
students = wagon_sort(students)

students_list = ""
if (students.empty?)
  students_list = "It seems you are alone."
elsif (students.size == 1)
  students_list = students.first
else
  students_list = students.slice(0...-1).join(", ") + " and " + students.last
end

if students.empty?
  puts "Too bad... Your Wagon has #{students.count} students:
- #{students_list}"
else puts "Congratulations! Your Wagon has #{students.count} students:
- #{students_list}"
end