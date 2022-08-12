let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var arr:[[String]] = Array(repeating: Array(repeating: "", count: m), count: n)

var ans:[String] = []

for i in 0...n-1{
    let a = readLine()!.map{String($0)}
    for j in 0...m-1{
        arr[i][j] = a[j]
    }
}

for i in 0...n-1{
    var str = ""
    for j in 0...m-1{
        if(arr[i][j] != "#"){
            str += arr[i][j]
        }
        else{
            if(str.count > 1){
                ans.append(str)
            }
            str = ""
        }
    }
    if(str.count > 1){
        ans.append(str)
    }
}

for j in 0...m-1{
    var str = ""
    for i in 0...n-1{
        if(arr[i][j] != "#"){
            str += arr[i][j]
        }
        else{
            if(str.count > 1){
                ans.append(str)
            }
            str = ""
        }
    }
    if(str.count > 1){
        ans.append(str)
    }
}
ans.sort()
print(ans[0])
