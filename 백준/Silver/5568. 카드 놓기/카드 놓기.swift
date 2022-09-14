let n = Int(readLine()!)!
let m = Int(readLine()!)!

var arr:[String] = Array(repeating: "", count: n)
var visited:[Bool] = Array(repeating: false, count: n)
var str = ""
var ans = Set<String>()

for i in 0...n-1{
    arr[i] = readLine()!
}
dfs(str,0)

print(ans.count)

func dfs(_ str:String, _ cnt:Int){
    var str = str
    if(cnt == m){
        ans.insert(str)
        return
    }
    for i in 0...n-1{
        if(!visited[i]){
            visited[i] = true
            str += arr[i]
            dfs(str,cnt+1)
            let length = arr[i].count
            for _ in 0...length-1{
                str.removeLast()
            }
            visited[i] = false
        }
    }
}
