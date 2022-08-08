let n = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: n)

for i in 0...n-1{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[i][0] = input[0]
    arr[i][1] = input[1]
}

arr.sort(by: {
    if($0[1] == $1[1]){
        return $0[0] < $1[0]
    }
    return $0[1] < $1[1]
})

var ans:[[Int]] = [[arr[0][0],arr[0][1]]]

for i in 1...arr.count-1{
    if(ans.last![1] <= arr[i][0]){
        ans.append([arr[i][0],arr[i][1]])
    }
}


print(ans.count)
