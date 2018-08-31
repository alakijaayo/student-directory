def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def process(selection)
  # 3. do what the user has asked
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end
