const maxProfit = prices => {
  let max = 0;
  let buy = 0;
  let sell = 1;

  while (sell < prices.length) {
    if (prices[sell] > prices[buy]) {
      max = Math.max(prices[sell] - prices[buy], max)
    } else {
      buy = sell
    }
    sell++;
  }
  return max;
}