let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}



arr.sort(by: {$0 < $1})

var ans = 0

for i in 0...arr.count-1{
    for j in 0...i{
        ans += arr[j]
    }
}

print(ans)
