let n = Int(readLine()!)!

var arr:[Int] = Array(repeating: 0, count: 367)

for i in 1...n{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0]
    let b = input[1]
    for j in a...b{
        arr[j] += 1
    }
}

//for i in 1...12{
//    print(i,arr[i])
//}

var start = 0
var end = 0
var height = 0
var index = 0
var ans = 0

while(index <= 365){
    if(arr[index] != 0){
        start = index
        while(true){
            if(arr[index] == 0){
                end = index
                ans += (end - start) * height
                height = 0
                break
            }
            if(height < arr[index]){
                height = arr[index]
            }
            index += 1
        }
    }
    else{
        index += 1
    }
}

print(ans)
