import Foundation

var n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 102), count: 102)
var cnt = 0
for _ in 0...n-1{
    var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    for i in input[0]...input[0]+9{
        for j in input[1]...input[1]+9{
            arr[i][j] = 1
        }
    }
}

var dx: [Int] = [0,0,-1,1]
var dy: [Int] = [1,-1,0,0]

for i in 1...100{
    for j in 1...100{
        if(arr[i][j] == 1){
            for k in 0...3{
                if(arr[i+dx[k]][j+dy[k]] == 0){
                    cnt += 1
                }
            }
        }
    }
}

print(cnt)
