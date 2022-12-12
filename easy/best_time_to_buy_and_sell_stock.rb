def max_profit(prices)
  max = 0
  buy, sell = 0, 1
  
  while sell < prices.length
    if prices[sell] > prices[buy]
      max = [prices[sell] - prices[buy], max].max
    else
      buy = sell
    end
    sell += 1
  end
  max
end
