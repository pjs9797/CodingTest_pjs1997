let n = Int(readLine()!)!
let m = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = 0
for i in 0...n-2{
    var sum = arr[i]
    for j in i+1...n-1{
        sum += arr[j]
        if(sum == m){
            cnt += 1
        }
        sum -= arr[j]
    }
}

print(cnt)
