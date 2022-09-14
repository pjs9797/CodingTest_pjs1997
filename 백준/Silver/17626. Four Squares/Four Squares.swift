import Foundation

let n = Int(readLine()!)!

var dp:[Int] = Array(repeating: 0, count: n+1)

dp[0] = 0
dp[1] = 1

if(n == 1){
    print(1)
}

else{
    for i in 2...n{
        let k = Int(sqrt(Double(i)))
        var m = Int.max
        for j in 1...k{
            m = min(m, dp[i-j*j])
        }
        dp[i] = m + 1
    }
    
    print(dp[n])
    
}
