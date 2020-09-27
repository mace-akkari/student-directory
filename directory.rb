def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # get cohort
    puts "Enter cohort: "
    cohort = gets.chomp
    # add the student hash to the array
    if cohort == ""
      students << {name: name.capitalize, cohort: "TBC"}
    else
      students << {name: name.capitalize, cohort: cohort.capitalize.to_sym}
    end
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    name = gets.gsub("\n", "")
  end
  # return the array of students
  return students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(students)
  students.each.with_index(1) do |student, index|
    # (ex.2) if student[:name][0].downcase == "a"
    # (.3) if student[:name].length < 12
    puts "#{index}) #{student[:name]} (#{student[:cohort]} cohort)"
    #end
  end
end 


def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)