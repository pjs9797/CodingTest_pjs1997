let n = Int(readLine()!)!

var arr:[[String]] = Array(repeating: Array(repeating: "", count: 4), count: n)

for i in 0...n-1{
    let input = readLine()!.split(separator: " ").map{String($0)}
    for j in 0...3{
        arr[i][j] = input[j]
    }
}

arr.sort(by: {
    
    if(Int($0[1])! == Int($1[1])!){
        if(Int($0[2])! == Int($1[2])!){
            if(Int($0[3])! == Int($1[3])!){
                return $0[0] < $1[0]
            }
            else{
                return Int($0[3])! > Int($1[3])!
            }
        }
        else{
            return Int($0[2])! < Int($1[2])!
        }
    }
    else{
        return Int($0[1])! > Int($1[1])!
    }
    
})

for i in arr{
    print(i[0])
}
