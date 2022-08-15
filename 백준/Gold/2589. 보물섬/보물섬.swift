let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

var arr:[[String]] = Array(repeating: Array(repeating: "", count: m), count: n)

for i in 0...n-1{
    let aa = readLine()!.map{String($0)}
    for j in 0...m-1{
        arr[i][j] = aa[j]
    }
}

var max = 0

for i in 0...n-1{
    for j in 0...m-1{
        if(arr[i][j] == "L"){
            bfs(i,j)
        }
    }
}
print(max)


func bfs(_ x:Int, _ y:Int){
    var queue = [(x,y,0)]
    var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
    visited[x][y] = true
    while(!queue.isEmpty){
        var a = queue.removeFirst()
        var ax = a.0
        var ay = a.1
        var az = a.2
        for k in 0...3{
            let dx = ax + dx[k]
            let dy = ay + dy[k]
            if(dx >= 0 && dy >= 0 && dx < n && dy < m){
                if(!visited[dx][dy] && arr[dx][dy] == "L"){
                    visited[dx][dy] = true
                    if(az+1 > max){
                        max = az + 1
                    }
                    queue.append((dx,dy,az + 1))
                }
            }
        }
    }
}
