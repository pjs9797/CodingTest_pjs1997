import Foundation

var n = Int(readLine()!)!
var sum = 0
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: n)
var aa: [Int] = Array(repeating: 0, count: n)
for i in 0...n-1{
    var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    aa[i] = input[0]
    for j in 0...2{
        arr[i][j] = input[j]
    }
}

for i in 1...9{
    for j in 1...9{
        for k in 1...9{
            if(i != j && j != k && i != k){
                var ans: [Int] = [i,j,k]
                var check = 0
                for l in 0...n-1{
                    
                    var num:[Int] = [aa[l]/100, (aa[l] / 10) % 10, aa[l] % 10]
                    var strike = arr[l][1]
                    var ball = arr[l][2]
                    var s = 0
                    var b = 0
                    
                    if(ans[0] == num[0]){
                        s += 1
                    }
                    else if(ans[0] == num[1] || ans[0] == num[2]){
                        b += 1
                    }
                    if(ans[1] == num[1]){
                        s += 1
                    }
                    else if(ans[1] == num[0] || ans[1] == num[2]){
                        b += 1
                    }
                    if(ans[2] == num[2]){
                        s += 1
                    }
                    else if(ans[2] == num[1] || ans[2] == num[0]){
                        b += 1
                    }
                    if(strike == s && ball == b){
                        check += 1
                    }
                    if(check == n){
                        sum += 1
                    }
                }
            }
        }
    }
}

print(sum)
