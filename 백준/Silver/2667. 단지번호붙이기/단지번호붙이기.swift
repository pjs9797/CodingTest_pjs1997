let n = Int(readLine()!)!

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)

for i in 0...n-1{
    let input2 = readLine()!.map{Int(String($0))!}
    for j in 0...n-1{
        arr[i][j] = input2[j]
    }
}

var ans = [Int]()

for i in 0...n-1{
    for j in 0...n-1{
        if(arr[i][j] == 1){
            ans.append(bfs(i,j))
        }
        
    }
}
ans.sort()
print(ans.count)
for i in ans{
    print(i)
}




func bfs(_ x:Int,_ y:Int) -> Int{
    var queue = [(Int,Int)]()
    queue.append((x,y))
    arr[x][y] = 0
    var index = 0
    while(index < queue.count){
        let a = queue[index]
        index += 1
        for k in 0...3{
            let dx = a.0 + dx[k]
            let dy = a.1 + dy[k]
            if(dx >= 0 && dy >= 0 && dx < n && dy < n){
                if(arr[dx][dy] == 1){
                    arr[dx][dy] = 0
                    
                    queue.append((dx,dy))
                }
            }
        }
    }
    return queue.count
    
}
