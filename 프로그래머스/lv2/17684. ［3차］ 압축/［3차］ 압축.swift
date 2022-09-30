
//print(solution("TOBEORNOTTOBEORTOBEORNOT"))

func solution(_ msg:String) -> [Int] {
    var arr = msg.map{String($0)}
    var dic = [String:Int]()
    var ans = [Int]()
    var cnt = 27
    var index = 0
    for i in 1...26{
        dic[String(UnicodeScalar(64+i)!)] = i
    }
    
    while(index < arr.count){
        var sum = arr[index]
        
        if(dic[sum] != nil){
            while(true){
                index += 1
                if(index == arr.count){
                    ans.append(dic[sum]!)
                    index += 1
                    break
                }
                sum += arr[index]
                if(dic[sum] != nil){
                    continue
                }
                else{
                    dic[sum] = cnt
                    cnt += 1
                    sum.removeLast()
                    ans.append(dic[sum]!)
                    break
                }
                
            }
        }
        
        
        
        
    }
    
    
    return ans
}
