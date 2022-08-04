let n = Int(readLine()!)!

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited: [[Bool]] = [[]]
var min = 101
var max = 0

let dx = [0,0,1,-1]
let dy = [1,-1,0,0]

for i in 0...n-1{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...n-1{
        arr[i][j] = input[j]
        if(max < arr[i][j]){
            max = arr[i][j]
        }
        if(min > arr[i][j]){
            min = arr[i][j]
        }
    }
}
var ans:[Int] = []
for k in min...max{
    visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var cnt = 0
    for i in 0...n-1{
        for j in 0...n-1{
            if(arr[i][j] <= k){
                visited[i][j] = true
            }
        }
    }

    for i in 0...n-1{
        for j in 0...n-1{
            if(!visited[i][j]){
                dfs(i,j)
                cnt += 1
            }
        }
    }
    ans.append(cnt)
}
var aa = ans.sorted()

if(aa.last! == 0){
    print(1)
}
else{
    print(aa.last!)
}

func dfs(_ x:Int,_ y:Int){
    visited[x][y] = true
    for k in 0...3{
        var dx = x + dx[k]
        var dy = y + dy[k]
        if(dx >= 0 && dx < n && dy >= 0 && dy < n){
            if(!visited[dx][dy]){
                dfs(dx, dy)
            }
        }
    }
}
