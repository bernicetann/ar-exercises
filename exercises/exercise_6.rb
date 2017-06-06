require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord
  has_many :employees
end

class Employee < ActiveRecord
  belongs_to :store
end


@store1.employees.create(first_name: "Goku", last_name: "Dragonball", hourly_rate: 30)
