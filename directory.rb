def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return three times"
  # create an empty array
  students = []
  # get the first name
  puts "Please enter a name:"
  name = gets.chomp
  puts "Please enter the cohort:"
  cohort = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, hobby: "Causing chaos", birth: "DOB", height: "6ft 3in"}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter a name:"
    name = gets.chomp
    puts "Please enter the cohort:"
    cohort = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
    index_var = 0
    while index_var < students.length
      puts "#{index_var + 1}. #{students[index_var][:name]} (#{students[index_var][:cohort]} cohort)"
      puts "birth: #{students[index_var][:birth]}, height: #{students[index_var][:height]}".center(15)
      puts "hobby: #{students[index_var][:hobby]}".center(30)
      index_var += 1
    end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
