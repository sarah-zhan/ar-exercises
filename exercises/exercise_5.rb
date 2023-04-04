require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "total revenue: #{Store.sum(:annual_revenue)}"
puts "average annual: #{Store.average(:annual_revenue)}"

pp @annual_revenue_more_than_1m = Store.where('annual_revenue > ?', 1_000_000)
puts "number of stores that are generating $1M or more in annual sales: #{@annual_revenue_more_than_1m.ids.count}"