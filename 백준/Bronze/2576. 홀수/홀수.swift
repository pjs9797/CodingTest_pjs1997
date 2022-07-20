import Foundation

var arr: [Int] = []
var input: Int
var sum: Int = 0
var min = 100

for _ in 1...7{
    input = Int(readLine()!)!
    arr.append(input)
}
//print(arr)

for i in arr{
    if(i%2==1){
        sum += i
        if(i<min){
            min=i
        }
    }
}
if(sum != 0){
    print(sum)
    print(min)
}
else{
    print(-1)
}
