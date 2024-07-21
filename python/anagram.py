class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        dic={}
        for i in s:
            if i in dic:
                dic[i]+=1
            else:
                dic[i]=1


        for i in t:
            if i in dic:
                if dic[i]>1:
                    dic[i]-=1
                else:
                    del dic[i]
            else:
                return False        

        if dic == {}:
            return True
        else:
            return False                                   
        