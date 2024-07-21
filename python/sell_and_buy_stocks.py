class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        best_time=0
        suffix=len(prices)-1
        prefix=suffix-1
        while prefix >= 0 and prefix < suffix:
            diff= prices[suffix]-prices[prefix]
            best_time= max(best_time,diff)
            if prices[prefix] > prices[suffix]:
                suffix=prefix
            prefix-=1

        return best_time 



                
        