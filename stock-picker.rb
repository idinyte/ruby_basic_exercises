def stock_picker(days)
  max = 0
  buy_sell = [0, 0]
  (0..days.length - 1).each do |i|
    (i..days.length - 1).each do |j|
      next unless days[j] - days[i] > max

      max = days[j] - days[i]
      buy_sell[0] = i
      buy_sell[1] = j
    end
  end
  buy_sell
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
