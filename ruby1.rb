$employees_array = []

def get_employee_data
  puts "Name of your employee"
  employee = gets.chomp!

  puts "How much does #{employee} make per hour?"
  employee_wage = gets.chomp!

  puts "How many hours does #{employee} work per day?"
  employee_hours = gets.chomp!

  add_employee(employee, employee_wage, employee_hours)

  puts "Do you have another employee you would like to enter?"
  response = gets.chomp!

  if response.downcase == "no"
    display_employee_salaries
  else
    get_employee_data
  end
end

def add_employee(employee, employee_wage, employee_hours)
  employee_hash = {
    name: employee,
    wage: employee_wage.to_i,
    hours: employee_hours.to_i,
  }
  $employees_array << employee_hash
end

def display_employee_salaries
  $employees_array.each do |employee|
    puts "Employee #{employee[:name]} makes $#{employee[:wage]} per hour and worked #{employee[:hours]} hrs. That means their annual salary is: $#{ employee_salary(employee) } "
  end
end

def employee_salary(employee)
  employee[:wage] * employee[:hours] * 261 # 261 is the number of working days per year
end

get_employee_data


