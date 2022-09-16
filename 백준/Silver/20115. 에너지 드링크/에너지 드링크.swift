let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Double(String($0))!}



arr.sort(by: {$0 > $1})

var ans = arr[0]

for i in 1...arr.count-1{
    var b = arr[i] / 2
    ans += b
}

print(ans)
