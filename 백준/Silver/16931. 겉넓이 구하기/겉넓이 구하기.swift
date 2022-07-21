import Foundation

var sum = 0
var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: input[1]+2), count: input[0]+2)

for i in 1...input[0]{
    var a = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    for j in 1...input[1]{
        arr[i][j] = a[j-1]
    }
}

sum += input[0] * input[1] * 2

for i in 1...input[0]{
    for j in 1...input[1]+1{
        if(arr[i][j] > arr[i][j-1]){
            sum += arr[i][j] - arr[i][j-1]
        }
        if(arr[i][j] < arr[i][j-1]){
            sum += arr[i][j-1] - arr[i][j]
        }
    }
}

for j in 1...input[1]{
    for i in 1...input[0]+1{
        if(arr[i][j] > arr[i-1][j]){
            sum += arr[i][j] - arr[i-1][j]
        }
        if(arr[i][j] < arr[i-1][j]){
            sum += arr[i-1][j] - arr[i][j]
        }
    }
}
print(sum)
