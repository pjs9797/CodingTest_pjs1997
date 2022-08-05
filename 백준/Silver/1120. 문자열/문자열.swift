import Foundation

var input = readLine()!.split(separator: " ").map{String($0)}

var a = input[0]
var b = input[1]

var arr:[String] = []
for i in a{
    arr.append(String(i))
}
var arr2:[String] = []
for i in b{
    arr2.append(String(i))
}

var cnt:[Int] = []

for i in 0...arr2.count-arr.count{
    var a = 0
    for j in 0...arr.count-1{
        if(arr[j] != arr2[j+i]){
            a += 1
        }
    }
    cnt.append(a)
}
cnt.sort()
print(cnt[0])
