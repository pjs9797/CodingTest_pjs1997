let n = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: [Int](), count: n+1)
var visited:[Int] = Array(repeating: 0, count: n+1)
var queue:[Int] = [1]
var index = 0

for _ in 1...n-1{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0]
    let b = input[1]
    arr[a].append(b)
    arr[b].append(a)
}

bfs(1)
for i in 2...n{
    print(visited[i])
}

func bfs(_ x:Int){
    while(index < queue.count){
        var a = queue[index]
        index += 1
        for i in 0...arr[a].count-1{
            if(visited[arr[a][i]] == 0){
                visited[arr[a][i]] = a
                queue.append(arr[a][i])
            }
        }
    }
}
