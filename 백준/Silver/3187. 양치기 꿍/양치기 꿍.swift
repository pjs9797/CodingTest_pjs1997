let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

var arr:[[String]] = Array(repeating: Array(repeating: "", count: m), count: n)
var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

var wolf = 0
var lam = 0

for i in 0...n-1{
    let aa = readLine()!.map{String($0)}
    for j in 0...m-1{
        arr[i][j] = aa[j]
        if(arr[i][j] == "v"){
            wolf += 1
        }
        else if(arr[i][j] == "k"){
            lam += 1
        }
    }
}

var k = 0
var v = 0

for i in 0...n-1{
    for j in 0...m-1{
        v = 0
        k = 0
        if(!visited[i][j] && arr[i][j] != "#"){
            if(arr[i][j] == "k"){
                k += 1
            }
            else if(arr[i][j] == "v"){
                v += 1
            }
            dfs(i,j)
            if(k > v){
                wolf -= v
            }
            else{
                lam -= k
            }
        }
    }
}

print(lam,wolf)

func dfs(_ x:Int, _ y:Int){
    visited[x][y] = true
    for l in 0...3{
        let dx = x + dx[l]
        let dy = y + dy[l]
        if(dx >= 0 && dy >= 0 && dx < n && dy < m){
            if(!visited[dx][dy]){
                if(arr[dx][dy] != "#"){
                    if(arr[dx][dy] == "k"){
                        k += 1
                    }
                    else if(arr[dx][dy] == "v"){
                        v += 1
                    }
                    dfs(dx,dy)
                }
            }
        }
    }
}
