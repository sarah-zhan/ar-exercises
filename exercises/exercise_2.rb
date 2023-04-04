require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find('1')
@store2 = Store.find('2')
# pp @store1.id
Store.update(@store1.id, annual_revenue: 330_000)