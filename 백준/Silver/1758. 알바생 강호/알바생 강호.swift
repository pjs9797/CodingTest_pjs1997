let n = Int(readLine()!)!

var arr = [Int]()

for i in 1...n{
    arr.append(Int(readLine()!)! + 1)
}

arr.sort(by: {$0 > $1})

var ans = 0

for i in 0...arr.count-1{
    var a = arr[i] - ( i + 1 )
    if(a < 0){
        a = 0
    }
    ans += a
}
print(ans)



