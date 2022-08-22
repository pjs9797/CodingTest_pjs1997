let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let k = input[1]

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

arr.sort(by: {
    return $0 > $1
})

print(arr[k-1])
