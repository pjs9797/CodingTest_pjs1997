var testcase = Int(readLine()!)!

var arr:[[Int]] = [[]]
var visited:[[Bool]] = [[]]
var m = 0
var n = 0

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

for _ in 1...testcase{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    m = input[0]
    n = input[1]
    let k = input[2]
    var cnt = 0
    arr = Array(repeating: Array(repeating: 0, count: m), count: n)
    visited = Array(repeating: Array(repeating: false, count: m), count: n)
    for i in 0...k-1{
        let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
        arr[input2[1]][input2[0]] = 1
    }
    for i in 0...n-1{
        for j in 0...m-1{
            if(arr[i][j] == 1 && !visited[i][j]){
                dfs(i,j)
                cnt += 1
            }
        }
    }
    print(cnt)
}

func dfs(_ x:Int, _ y:Int){
    visited[x][y] = true
    for k in 0...3{
        var dx = x + dx[k]
        var dy = y + dy[k]
        if(dx >= 0 && dx < n && dy >= 0 && dy < m){
            if(arr[dx][dy] == 1 && !visited[dx][dy]){
                dfs(dx, dy)
            }
        }
    }
}
