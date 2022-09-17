let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0...n-1{
    let input2 = readLine()!.map{Int(String($0))!}
    for j in 0...m-1{
        arr[i][j] = input2[j]
    }
}

var queue = [(Int,Int,Int)]()
var index = 0

bfs(0,0)

func bfs(_ x:Int, _ y:Int){
    //var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
    
    queue.append((x,y,1))
    
Loop:while(index < queue.count){
        let a = queue[index]
        
        index += 1
        for k in 0...3{
            let dx = a.0 + dx[k]
            let dy = a.1 + dy[k]
            if(dx >= 0 && dy >= 0 && dx < n && dy < m){
                if(arr[dx][dy] == 1){
                    if(dx == n-1 && dy == m-1){
                        print(a.2+1)
                        break Loop
                    }
                    arr[dx][dy] = 0
                    queue.append((dx,dy,a.2+1))
                    
                }
            }
        }
    }
    
}
