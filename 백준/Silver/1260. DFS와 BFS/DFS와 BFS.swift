let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]
let v = input[2]

var arr:[[Int]] = Array(repeating: [Int](), count: n+1)
var visited:[Bool] = Array(repeating: false, count: n+1)
var kk:[Bool] = Array(repeating: false, count: n+1)
var dfsArr = [Int]()
var bfsArr = [Int]()
var queue = [Int]()
var index = 0
for i in 1...m{
    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[input2[0]].append(input2[1])
    arr[input2[1]].append(input2[0])
}
for i in 1...n{
    arr[i].sort()
}


dfs(v)
for i in 0...dfsArr.count-1{
    if(i == dfsArr.count-1){
        print(dfsArr[i])
    }
    else{
        print(dfsArr[i],terminator: " ")
    }
}

queue.append(v)
kk[v] = true
bfs(v)
for i in 0...queue.count-1{
    print(queue[i],terminator: " ")
}


func dfs(_ x:Int){
    visited[x] = true
    dfsArr.append(x)
    if(!arr[x].isEmpty){
        for i in 0...arr[x].count-1{
            if(!visited[arr[x][i]]){
                dfs(arr[x][i])
            }
        }
    }
}

func bfs(_ x:Int){
    while(index < queue.count){
        let a = queue[index]
        index += 1
        if(!arr[x].isEmpty){
            for i in 0...arr[x].count-1{
                if(!kk[arr[x][i]]){
                    queue.append(arr[x][i])
                    kk[arr[x][i]] = true
                }
            }
        }
        if(index < queue.count){
            bfs(queue[index])
        }
        
    }
    
}
