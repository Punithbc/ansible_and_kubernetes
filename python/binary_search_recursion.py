array=[2,3,4,5,6,23,100,120]

def binary(array: list,start: int, end: int,num: int ) -> int:
    mid = (start+end)//2
    if array[mid] == num:
        return mid
    
    if num < array[mid]:
        return binary(array,start,mid-1,num)
    else:
        return binary(array,mid+1,end,num)
        
result=binary(array,0,len(array)-1,4)
print(result)