import Foundation

//print(solution(["muzi", "frodo", "apeach", "neo"],["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"],2))

//print(solution(["con", "ryan"],["ryan con", "ryan con", "ryan con", "ryan con"],3))

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dic = [String:[String]]()
    var fire = [String]()
    var arr:[Int] = Array(repeating: 0, count: id_list.count)
    
    
    for i in Set(report){
        let input = i.split(separator: " ").map{String($0)}
        let end = input[0]
        let start = input[1]
        if dic[start] != nil{
            dic[start]!.append(end)
        }
        else{
            dic[start] = [end]
        }
        
        
    }
    
    
    for i in dic{
        if(i.value.count >= k){
            fire.append(i.key)
        }
    }
    
    for i in fire{
        for j in dic[i]!{
            arr[id_list.firstIndex(of: j)!] += 1
        }
    }
    
    
    return arr
}
