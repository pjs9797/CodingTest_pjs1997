let n = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: [Int](), count: n+1)

for i in 1...n{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let cow = input[0]
    let position = input[1]
    arr[cow].append(position)
}

var cnt = 0

for i in arr{
    if(i.count > 1){
        var a = i[0]
        for j in 1...i.count-1{
            if(i[j] != a){
                a = i[j]
                cnt += 1
            }
        }
    }
}

print(cnt)
