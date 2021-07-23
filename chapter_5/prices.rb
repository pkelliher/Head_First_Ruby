# Total method, sums amounts 
# listed in prices array, each iterates through the array 
# and stores the price block argument, the code block handles the sum function 
# then stores in the amount
def total(prices)
    amount = 0
    prices.each do |price|
        amount += price
    end
    amount
end

def refund(prices)
    amount = 0
    prices.each do |price|
        amount -= price
    end
    amount
end

def show_discounts(prices)
    prices.each do |price|
        amount_off = price / 3.0
        puts format("Your discount: $%.2f", amount_off)
    end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)