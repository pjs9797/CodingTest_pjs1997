import Foundation

var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}

var N = input[0]
var K = input[1]
var A = input[2]
var B = input[3]

var arr: [Int] = Array(repeating: K, count: N)
var cnt = 0
var max = 1000
Loop:while(true){
    cnt += 1
    var z = 0
    for i in 0...arr.count-1{
        if(max > arr[i]){
            for j in 0...A-1{
                arr[i+j] += B
                
            }
            max = arr[i]
            z = 1
            break
        }
    }
    if(z==0){
        for i in 0...A-1{
            arr[i] += B
        }
        max = arr[0]
    }
    
    max -= 1
    for i in 0...arr.count-1{
        arr[i] -= 1
        //print(arr[i],terminator: " ")
        if(arr[i] == 0){
            break Loop
        }
    }
    //print()
}
print(cnt)
