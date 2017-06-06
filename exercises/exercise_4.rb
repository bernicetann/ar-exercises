require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
burnaby = Store.create name: 'Surrey',
                       annual_revenue: '224000',
                       mens_apparel: 'false',
                       womens_apparel: 'true'

richmond = Store.create name: 'Whistler',
                        annual_revenue: '1900000',
                        mens_apparel: 'true',
                        womens_apparel: 'false'

gastown = Store.create name: 'Yaletown',
                       annual_revenue: '430000',
                       mens_apparel: 'true',
                       womens_apparel: 'true'

# @mens_stores = Store.where mens_apparel: true
# p @mens_stores.to_sql

@womens_stores = Store.where (["womens_apparel = ? and annual_revenue < ?", true, 1000000])
p @womens_stores.to_sql

# @mens_stores.each do |t|
#   puts t.name, t.annual_revenue
# end

@womens_stores.each do |t|
  puts t.name, t.annual_revenue
end
