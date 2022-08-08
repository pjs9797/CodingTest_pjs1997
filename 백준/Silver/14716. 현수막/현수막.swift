var input = readLine()!.split(separator: " ").map{Int(String($0))!}

var n = input[0]
var m = input[1]

var cnt = 0

let dx = [0,0,1,-1,1,1,-1,-1]
let dy = [1,-1,0,0,1,-1,1,-1]

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

for i in 0...n-1{
    var a = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...m-1{
        arr[i][j] = a[j]
    }
}

for i in 0...n-1{
    for j in 0...m-1{
        if(!visited[i][j] && arr[i][j] == 1){
            dfs(i,j)
            cnt += 1
        }
    }
}

print(cnt)

func dfs(_ x:Int, _ y:Int){
    visited[x][y] = true
    for k in 0...7{
        let dx = x + dx[k]
        let dy = y + dy[k]
        if(dx >= 0 && dy >= 0 && dx < n && dy < m){
            if(!visited[dx][dy] && arr[dx][dy] == 1){
                dfs(dx, dy)
            }
        }
    }
}
