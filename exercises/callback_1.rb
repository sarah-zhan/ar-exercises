require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_6"

# pp @store1.employees.create(first_name: "James", last_name: "Koop", hourly_rate: 50)
# pp @store2.employees.create(first_name: "Jane", last_name: "Kooper", hourly_rate: 80)
pp @store2.employees.create(first_name: "T", last_name: "V", hourly_rate: 80)
