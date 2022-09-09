//4 3 1 2 5
//
//1 4 5 3 2
//3 5 1 4 2
//4 1 3 5 2

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let k = input[1]

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var di = readLine()!.split(separator: " ").map{Int(String($0))!}

arr.insert(0, at: 0)
di.insert(0, at: 0)

var cnt = 0

while(cnt != k){
    var aa:[Int] = Array(repeating: 0, count: n+1)
    for i in 1...n{
        aa[di[i]] = arr[i]
    }
    arr = aa
    cnt += 1
    //print(aa)
}
for i in 1...n{
    print(arr[i], terminator: " ")
}
