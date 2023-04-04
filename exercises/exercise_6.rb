require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sarah", last_name: "Nice", hourly_rate: 40)
@store1.employees.create(first_name: "Kate", last_name: "Boot", hourly_rate: 20)
@store1.employees.create(first_name: "Nice", last_name: "Hard", hourly_rate: 30)
@store1.employees.create(first_name: "White", last_name: "Jan", hourly_rate: 20)
@store2.employees.create(first_name: "One", last_name: "Kuo", hourly_rate: 10)
@store2.employees.create(first_name: "Two", last_name: "Men", hourly_rate: 20)
@store2.employees.create(first_name: "Three", last_name: "Goodness", hourly_rate: 30)
@store2.employees.create(first_name: "Four", last_name: "Knight", hourly_rate: 40)