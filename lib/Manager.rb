require 'pry'

class Manager

  @@all = []

  def self.all
    @@all
  end

  def self.all_departments
    Manager.all.collect {|manager| manager.department}
  end

  attr_accessor :name, :age, :department

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    Manager.all << self
  end

  def employees
    Employee.all.select{|employee| employee.manager == self}
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.average_age
    # overall = 0
    # Manager.all.each {|manager| overall += manager.age}
    # overall / Manager.all.length
    # Better way to do this??

    a = all.map {|manager| manager.age}.reduce(:+).to_f/Manager.all.size

    # .reduce(:+) <-------- will add an array of nums, operator is added after a symbol
  end

end
