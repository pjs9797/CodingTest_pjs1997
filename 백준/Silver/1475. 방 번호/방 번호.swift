import Foundation


var sum = 0
var a = 0
var num: [Int] = Array(repeating: 0, count: 10)
var arr = readLine()!.map{Int(String($0))!}

for i in 0...arr.count-1{
    if(arr[i] == 0){
        num[0] += 1
    }
    else if(arr[i] == 1){
        num[1] += 1
    }
    else if(arr[i] == 2){
        num[2] += 1
    }
    else if(arr[i] == 3){
        num[3] += 1
    }
    else if(arr[i] == 4){
        num[4] += 1
    }
    else if(arr[i] == 5){
        num[5] += 1
    }
    else if(arr[i] == 6){
        num[6] += 1
    }
    else if(arr[i] == 7){
        num[7] += 1
    }
    else if(arr[i] == 8){
        num[8] += 1
    }
    else if(arr[i] == 9){
        num[9] += 1
    }
}
var min = 0

for i in 0...9{
    if(i != 6 && i != 9){
        if(num[i] > min){
            min = num[i]
        }
    }
}
a = num[6] + num[9]

if(a % 2 == 0){
    a = a / 2
}
else{
    a = a / 2 + 1
}
if(min >= a){
    sum = min
}
else{
    sum = a
}
print(sum)
