var input = readLine()!.split(separator: " ").map{Int(String($0))!}


let n = input[1]
let m = input[0]

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
var queue = [[Int]]()

for i in 0...n-1{
    let aa = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...m-1{
        arr[i][j] = aa[j]
        if(arr[i][j] == 1){
            //visited[i][j] = true
            queue.append([i,j,0])
        }
    }
}

var max = 0
var index = 0




while(index < queue.count){
    var a = queue[index]
    index += 1
    var ax = a[0]
    var ay = a[1]
    var az = a[2]
    for k in 0...3{
        let dx = ax + dx[k]
        let dy = ay + dy[k]
        if(dx >= 0 && dy >= 0 && dx < n && dy < m){
            if(arr[dx][dy] == 0){
                //visited[dx][dy] = true
                arr[dx][dy] = 1
                
                if(az+1 > max){
                    max = az + 1
                }
                queue.append([dx,dy,az+1])
            }
        }
    }
}

var a = 0
for i in 0...n-1{
    for j in 0...m-1{
        if(arr[i][j] == 0){
            a = 1
            break
        }
    }
}

if(a == 1){
    print(-1)
}
else{
    print(max)
}
