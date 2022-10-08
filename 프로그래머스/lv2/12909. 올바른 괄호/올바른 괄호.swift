import Foundation

func solution(_ s:String) -> Bool
{
    var ans = false
    var cnt = 0
    for i in s{
        if(cnt == 0){
            if(i == "("){
                cnt += 1
            }
            else{
                ans = false
                cnt = 1
                break
            }
        }
        else{
            if(i == "("){
                cnt += 1
            }
            else{
                cnt -= 1
            }
        }
    }
    if(cnt == 0){
        
        ans = true
    
    }
    else{
        ans = false
    }
    
    
    return ans
}