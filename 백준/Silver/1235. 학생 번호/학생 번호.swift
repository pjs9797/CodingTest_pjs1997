import Foundation

var n = Int(readLine()!)!
var length = 0
var arr: [[String]] = [[]]
for _ in 0...n-1{
    var input = readLine()!.map{String($0)}
    length = input.count
    arr.append(input)
}

var ans: [String] = Array(repeating: "", count: n)
var cnt = 0
loop: for j in stride(from: length-1, to: -1, by: -1){
    for i in 1...n{
        ans[i-1] = ans[i-1] + arr[i][j]
    }
    cnt += 1
    var check = 0
    for l in 0...n-2{
        for m in l+1...n-1{
            if(ans[l] == ans[m]){
                check = 1
            }
        }
    }
    if(check == 0){
        break loop
    }
}

print(cnt)

