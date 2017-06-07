require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :only_integer => true, :less_than => 200, :greater_than => 40 }
  validates :store_id, presence: true
end


@store1.employees.create(first_name: "Goku", last_name: "Dragonball", hourly_rate: 40)
@store1.employees.create(first_name: "Gohan", last_name: "Dragonball", hourly_rate: 50)
@store1.employees.create(first_name: "Chi Chi", last_name: "Dragonball", hourly_rate: 100)

@store2.employees.create(first_name: "Vegeta", last_name: "Dbz", hourly_rate: 100)
@store2.employees.create(first_name: "Bulma", last_name: "Dbz", hourly_rate: 50)
@store2.employees.create(first_name: "Trunks", last_name: "Virani", hourly_rate: 60)


