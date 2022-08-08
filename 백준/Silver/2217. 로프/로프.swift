var n = Int(readLine()!)!
var arr:[Int] = []
for i in 0...n-1{
    var a = Int(readLine()!)!
    arr.append(a)
}

arr.sort()

var j = arr.count

for i in 0...arr.count-1{
    arr[i] = arr[i] * j
    j -= 1
}

print(arr.max()!)
