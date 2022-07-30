var n = Int(readLine()!)!
var m = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 1...m{
    var input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var x = input[0]
    var y = input[1]
    arr[x][y] = 1
    arr[y][x] = 1
}

var visited:[Bool] = Array(repeating: false, count: n+1)
visited[1] = true

dfs(1)

var cnt = 0

for i in 1...n{
    if(visited[i]){
        cnt += 1
    }
}
print(cnt-1)

func dfs(_ x:Int){
    for i in 1...n{
        if(arr[x][i] == 1 && !visited[i]){
            visited[i] = true
            dfs(i)
        }
    }
}
