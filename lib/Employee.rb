require 'pry'

class Employee

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    Employee.all << self
  end

  attr_reader :manager, :salary, :name

  def manager_name
    self.manager.name
  end


  def self.paid_over(num)
    all.select {|employee| employee.salary > num}
  end

  def self.find_by_department(depart)
    # Theres a better way to do this.....
    all.find { |employee| employee.manager.department == depart }
  end

  def tax_bracket
    Employee.all.select {|employee| employee.salary.between?(self.salary-1000, self.salary+1000)}
  end #<--------- can subtract an element from an array to remove instead of using pop/slice with -[self]

end
