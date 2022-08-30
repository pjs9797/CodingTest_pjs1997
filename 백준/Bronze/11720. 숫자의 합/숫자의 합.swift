let n = Int(readLine()!)!

let arr = readLine()!.map{Int(String($0))!}
var ans = 0
for i in 0...n-1{
    ans += arr[i]
}

print(ans)
