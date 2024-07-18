array=[2,3,4,5,6,23,100,120]

def binary(arr: list,start: int, end: int,num: int ) -> int:
    
    while start <= end:
        mid = (start+end)//2
        if num > arr[mid]:
            start=mid+1
        elif num < arr[mid]:
            end=mid-1
        else:
            return mid
                
            
        
result=binary(array,0,len(array)-1,23)
print(result)