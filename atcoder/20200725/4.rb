money = 1000
stock = 0

# n = gets.chomp.to_i
# stock_prices = gets.chomp.split.map(&:to_i)
n = 2
stock_prices = [157, 193]

n.times do |index|
  if index + 1 == n
    # 最後
    if stock > 0
      money = money + stock * stock_prices[index]
    end
  else
    if stock_prices[index] < stock_prices[index + 1]
      # 購入
      stock, money = money.divmod(stock_prices[index])
    elsif stock_prices[index] > stock_prices[index + 1]
      # 売却
      money = money + stock * stock_prices[index]
      stock = 0
    end
  end
end

puts money
