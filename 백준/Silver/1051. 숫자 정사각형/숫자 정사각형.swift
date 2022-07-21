import Foundation

var input = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let n = input[0]
let m = input[1]
var z = 0
if(n <= m){
    z = n - 1
}
else{
    z = m - 1
}

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0...n-1{
    let input2 = readLine()!.map{Int(String($0))}
    for j in 0...m-1{
        arr[i][j] = input2[j]!
    }
}

var a1 = 0
var a2 = 0
var b1 = 0
var b2 = 0
var ans = 1

if(z == 0){
    print(1)
}
else{
    for k in 1...z{
        for i in 0...n-1-k{
            for j in 0...m-1-k{
                let num = arr[i][j]
                if(arr[i][j+k] == num && arr[i+k][j] == num && arr[i+k][j+k] == num){
                    ans = (k+1) * (k+1)
                }
            }
        }
    }

    print(ans)
}
