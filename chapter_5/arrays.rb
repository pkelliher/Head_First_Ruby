# prices array
prices = [25.00, 9.99, 3.99, 0.99, 5.99, 8.99]

index = 0
while index < prices.length
    puts prices[index]
    index += 1
end

#total method
# def total(prices)
#     amount = 0
#     index = 0
#     while index < prices.length
#         amount += prices[index]
#         index += 1
#     end
#     amount
# end

# prices = [3.99, 25.00, 8.99]

# puts format("%.2f", total(prices))


# refactored total method with .each method to loop through the prices array
# and using a code block to increment and sum each element in the array.
def total(prices)
    amount = 0
    prices.each do |price|
        amount += price
    end
    amount
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))

#refund method
def refund(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount
end

puts format("%.2f", refund(prices))

#show discounts method
def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

show_discounts(prices)