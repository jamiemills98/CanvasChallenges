
# Existing array of Hashes
# User Enter a customer's name

items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]

puts "Enter a customer's name."
    name= gets.chomp.capitalize
    #find the cost for the customers
    items.each do |value|
        price = value[:cost]
        if name == value[:customer]
            puts "#{name} owes $#{price}"
        end
    end
    
