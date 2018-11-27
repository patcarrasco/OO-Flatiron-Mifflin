require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Bob", "T-shirts", 100)
manager2 = Manager.new("Matilda", "Dresses", 50)

emp1 = manager1.hire_employee('Wanda', 13000)
emp2 = manager1.hire_employee('Longo', 2332)
emp3 = manager1.hire_employee('Amanda', 51341)
emp4 = manager2.hire_employee('Evan', 51043)
manager2.hire_employee('Aoura', 2513)
manager2.hire_employee('Ula', 1515)
manager2.hire_employee('Bingo', 42513)
todd = Employee.new("Todd", 100090, manager1)


binding.pry
puts "done"
