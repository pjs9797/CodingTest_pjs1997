let n = Int(readLine()!)!

var arr:[Int] = []
var visited:[Bool] = Array(repeating: false, count: n+1)

dfs(0)

func dfs(_ cnt:Int){
    if(cnt == n){
        for i in 0...arr.count-1{
            print(arr[i], terminator: " ")
        }
        print()
    }
    else{
        for i in 1...n{
            if(!visited[i]){
                arr.append(i)
                visited[i] = true
                dfs(cnt+1)
                visited[i] = false
                arr.popLast()
            }
        }
    }
    
}
