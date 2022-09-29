import Foundation

//print(solution(3,["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var cnt = 0
    var num = 0
    var check = 0
    var k = words[0].last
    var ans = [Int]()
    var set = Set<String>()
    set.insert(words[0])
    
    for i in 1...words.count-1{
        if(!set.contains(words[i]) && k == words[i].first){
            k = words[i].last
            set.insert(words[i])
            continue
        }
        else{
            check = 1
            cnt = i / n
            num = i % n
            ans = [num+1,cnt+1]
            break
        }
    }
    if(check == 0){
        ans = [0,0]
    }
    
    
    return ans
}
