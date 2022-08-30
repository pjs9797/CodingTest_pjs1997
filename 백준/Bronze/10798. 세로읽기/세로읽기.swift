var arr = Array(repeating: Array(repeating: "", count: 15), count: 5)

for i in 0...4{
    let input = readLine()!.map{String($0)}
    for j in 0...input.count-1{
        arr[i][j] = input[j]
    }
}

var ans = ""

for i in 0...14{
    for j in 0...4{
        ans += arr[j][i]
    }
}

print(ans)
