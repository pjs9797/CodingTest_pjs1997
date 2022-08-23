let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

var arr:[Int] = Array(repeating: 0, count: n+1)
var zz: [[Int]] = Array(repeating: [Int](), count: n+1)


for i in 0...m-1{
    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[input2[1]] += 1
    zz[input2[0]].append(input2[1])
}

var queue: [Int] = []
var index = 0

for i in 1...n{
    if(arr[i] == 0){
        queue.append(i)
    }
}

var k = 0

while(index < queue.count){
    var a = queue[index]
    index += 1
    print(a,terminator: " ")
    for i in zz[a]{
        arr[i] -= 1
        if(arr[i] == 0){
            queue.append(i)
        }
    }
}

