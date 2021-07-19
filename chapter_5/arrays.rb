prices = [25.00, 9.99, 3.99, 0.99, 5.99, 8.99]

index = 0
while index < prices.length
    puts prices[index]
    index += 1
end

def total(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount
end