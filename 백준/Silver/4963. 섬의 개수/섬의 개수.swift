var arr:[[Int]] = [[]]
var visited:[[Bool]] = [[]]
let dx = [0,0,1,-1,1,1,-1,-1]
let dy = [1,-1,0,0,1,-1,1,-1]
var cnt = 0
var m = 0
var n = 0


while(true){
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    m = input[0]
    n = input[1]
    if(n == 0 && m == 0){
        break
    }
    else{
        
        arr = Array(repeating: Array(repeating: 0, count: m), count: n)
        visited = Array(repeating: Array(repeating: false, count: m), count: n)
        
        for i in 0...n-1{
            let input = readLine()!.split(separator: " ").map{Int(String($0))!}
            for j in 0...m-1{
                arr[i][j] = input[j]
            }
        }
        cnt = 0
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
}

func dfs(_ x:Int,_ y:Int){
    visited[x][y] = true
    for i in 0...7{
        let dx = x + dx[i]
        let dy = y + dy[i]
        if(dx >= 0 && dx < n && dy >= 0 && dy < m && !visited[dx][dy]){
            if(arr[dx][dy] == 1){
                dfs(dx, dy)
            }
            
        }
    }
}

