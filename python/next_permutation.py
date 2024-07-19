class Solution:
    def nextPermutation(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
       """
        def reverse(nums,start,end):
            while start<end:
                nums[start],nums[end]=nums[end],nums[start]
                start+=1
                end-=1
                
        def search_index(nums,start,end):
            for i in range(end,start,-1):
                if nums[start] < nums[i]:
                    nums[start],nums[i]=nums[i],nums[start]
                    break
                    
        left=0
        right=len(nums)-2
        is_decending=False
        pointer=len(nums)-2
        while pointer >=0 and nums[pointer]>=nums[pointer+1]:
            pointer-=1
        if pointer==-1:
            is_decending=True    
 
        if is_decending:
            reverse(nums,0,len(nums)-1)
        else:          
            search_index(nums,pointer,len(nums)-1)
            reverse(nums,pointer+1,len(nums)-1)      
    


  
