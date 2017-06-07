require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base

    has_many :employees
    validates :name, length: { minimum: 3 },
    validates :annual_revenue, numericality: { only_integer: true }

    def must_carry_womens_or_mens_apparel
      if mens_apparel == false && womens_apparel == false
        errors.add("Should carry at least men's or women's apparel")
      end
    end

end



burnaby = Store.create(name: 'Bu',
                       annual_revenue: '300000',
                       mens_apparel: 'true',
                       womens_apparel: 'true')

richmond = Store.create name: 'Richmond',
                        annual_revenue: '1260000',
                        mens_apparel: 'false',
                        womens_apparel: 'true'

gastown = Store.create name: 'Gastown',
                       annual_revenue: '190000',
                       mens_apparel: 'true',
                       womens_apparel: 'false'


if burnaby.invalid?
  puts 'oopsie'
  puts burnaby.errors.messages
end


puts Store.count




