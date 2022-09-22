import Foundation

var strArr = Set<String>()
var visited:[Bool] = Array(repeating: false, count: 26)

//let orders = ["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"]
//let course = [2,3,5]
//print(solution(orders,course))

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var dic = [String:Int]()
    var redic = [Int:[String]]()
    var ans = Set<String>()
    var rans = [String]()
    
    for i in course{
        redic[i] = []
    }
    
    for i in course{
        for j in orders{
            dfs("", visited, i,j)
        }
        
    }
    
    for i in orders{
        for j in strArr{
            var check = 0
            for k in j{
                if(i.contains(k)){
                    continue
                }
                else{
                    check = 1
                    break
                }
            }
            if(check == 0){
                if dic[j] != nil{
                    dic[j]! += 1
                }
                else{
                    dic[j] = 1
                }
            }
        }
    }
    
    
    for i in course{
        var max = 0
        for j in dic{
            if(j.key.count == i && j.value >= 2){
                if(j.value > max){
                    redic[i]?.removeAll()
                    max = j.value
                    redic[i]?.append(j.key)
                }
                else if(j.value == max){
                    redic[i]?.append(j.key)
                }
            }
        }
    }
    for i in redic{
        var arr = i.value
        for j in arr{
            let a = j.sorted()
            ans.insert(String(a))
        }
    }
    for i in ans{
        rans.append(i)
    }
    

    return rans.sorted()
}



func dfs(_ str:String,_ visited:[Bool],_ k:Int, _ order:String){
    var visited = visited
    var str = str
    if(str.count == k){
        strArr.insert(str)
        return
    }
    for j in order{
        let index =  Int(UnicodeScalar(String(j))!.value) - 65
        if(!visited[index]){
            visited[index] = true
            str += String(j)
            dfs(str, visited, k,order)
            str.removeLast()
        }
    }
}
