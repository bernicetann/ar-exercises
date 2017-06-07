require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base

    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true }

end

burnaby = Store.create name: 'Bu',
                       annual_revenue: '300000',
                       mens_apparel: 'true',
                       womens_apparel: 'true'

richmond = Store.create name: 'Richmond',
                        annual_revenue: '1260000',
                        mens_apparel: 'false',
                        womens_apparel: 'true'

gastown = Store.create name: 'Gastown',
                       annual_revenue: '190000',
                       mens_apparel: 'true',
                       womens_apparel: 'false'

burnaby.valid?
burnaby.errors[:name] => ["TOO SHORT"]
puts Store.count

p burnaby
p richmond
p gastown


