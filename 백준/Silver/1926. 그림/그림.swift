var arr:[[Int]] = [[]]
var visited:[[Bool]] = [[]]
let dx = [0,0,1,-1,1,1,-1,-1]
let dy = [1,-1,0,0,1,-1,1,-1]
var cnt = 0
var m = 0
var n = 0

var max = 0
var size = 0

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
n = input[0]
m = input[1]

arr = Array(repeating: Array(repeating: 0, count: m), count: n)
visited = Array(repeating: Array(repeating: false, count: m), count: n)

for i in 0...n-1{
    var aa = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...m-1{
        arr[i][j] = aa[j]
    }
}
for i in 0...n-1{
    for j in 0...m-1{
        size = 1
        if(arr[i][j] == 1 && !visited[i][j]){
            dfs(i,j)
            cnt += 1
            if(max < size){
                max = size
            }
        }
    }
}

print(cnt)
print(max)


func dfs(_ x:Int,_ y:Int){
    visited[x][y] = true
    for i in 0...3{
        let dx = x + dx[i]
        let dy = y + dy[i]
        if(dx >= 0 && dx < n && dy >= 0 && dy < m && !visited[dx][dy]){
            if(arr[dx][dy] == 1){
                dfs(dx, dy)
                size += 1
            }
            
        }
    }
}

