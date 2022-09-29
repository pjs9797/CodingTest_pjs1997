import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic = [String:Int]()
    
    for i in 0...clothes.count-1{
        let a = clothes[i][1]
        if(dic[a] != nil){
            dic[a]! += 1
        }
        else{
            dic[a] = 1
        }
    }
    
    var ans = 1
    
    for i in dic{
        ans *= i.value + 1
    }
    
    
    
    return ans - 1
}
