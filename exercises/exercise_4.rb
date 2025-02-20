require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores
pp @mens_stores.select(:name, :annual_revenue)

# @womens_stores = Store.where(womens_apparel: true)
# pp @womens_stores.where('annual_revenue < ?', 1_000_000).select(:name)

# we can chain all together
pp @womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1_000_000).select(:name)
