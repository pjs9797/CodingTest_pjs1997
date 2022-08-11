let testcase = Int(readLine()!)!

var arr:[[String]] = [[]]
var visited:[[Bool]] = [[]]
var n:Int = 0
var m:Int = 0

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

for _ in 1...testcase{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    n = input[0]
    m = input[1]
    var cnt = 0
    arr = Array(repeating: Array(repeating: "", count: m), count: n)
    visited = Array(repeating: Array(repeating: false, count: m), count: n)
    for i in 0...n-1{
        let input2 = readLine()!.map{String($0)}
        for j in 0...m-1{
            arr[i][j] = input2[j]
        }
    }
    for i in 0...n-1{
        for j in 0...m-1{
            if(!visited[i][j] && arr[i][j] == "#"){
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
        let dx = x + dx[k]
        let dy = y + dy[k]
        if(dx >= 0 && dy >= 0 && dx < n && dy < m){
            if(!visited[dx][dy] && arr[dx][dy] == "#"){
                dfs(dx, dy)
            }
        }
    }
}
