import Foundation

var n = Int(readLine()!)!
var arr: [Int] = []

for i in 0...n-1{
    var input = Int(readLine()!)!
    arr.append(input)
}

arr.sort()

var ans = 0

var max = 0
if(n != 1){
loop:for i in 0...arr.count-2{
        ans=arr[i]
        var cnt = 1
        for j in i+1...arr.count-1{
            if(ans + 5 > arr[j]){
                cnt += 1
                if(cnt == 5){
                    max = 5
                    break loop
                }
            }
        }
        if(max <= cnt){
            max = cnt
        }
    }
    print(5-max)
}
else{
    print(4)
}
