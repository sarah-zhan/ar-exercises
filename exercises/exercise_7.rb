require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

input = gets.chomp
puts input

@new = Store.create(name: input)
 @new.errors.full_messages.each do |message| 
  puts message
 end
