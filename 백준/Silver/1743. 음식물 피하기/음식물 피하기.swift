let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
let k = input[2]

var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

var max = 0
var cnt = 0

let dx = [0,0,1,-1]
let dy = [1,-1,0,0]

for i in 1...k{
    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[a[0]-1][a[1]-1] = 1
}


for i in 0...n-1{
    for j in 0...m-1{
        cnt = 0
        if(!visited[i][j] && arr[i][j] == 1){
            dfs(i,j)
            if(cnt > max){
                max = cnt
            }
        }
        
    }
}

print(max)

func dfs(_ x:Int, _ y:Int){
    visited[x][y] = true
    cnt += 1
    for k in 0...3{
        var dx = x + dx[k]
        var dy = y + dy[k]
        if(dx >= 0 && dy >= 0 && dx < n && dy < m){
            if(!visited[dx][dy] && arr[dx][dy] == 1){
                dfs(dx, dy)
            }
        }
    }
}
