import Foundation

let arr = ["A","E","I","O","U"]
var ans = [String]()

func solution(_ word:String) -> Int {
    var a = 0
    for i in 1...5{
        dfs(i,"")
    }
    ans.sort()
    for i in 0...ans.count-1{
        if(ans[i] == word){
            a = i + 1
            break
        }
    }
    return a
}

func dfs(_ n:Int,_ str:String){
    var str = str
    if(str.count < n){
        for i in arr{
            str += i
            dfs(n,str)
            str.removeLast()
        }
    }
    else{
        ans.append(str)
        return
    }
}