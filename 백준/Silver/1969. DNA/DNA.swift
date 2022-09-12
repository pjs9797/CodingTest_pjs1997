let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

var arr:[[String]] = Array(repeating: Array(repeating: "", count: m), count: n+1)
var ans = ""
var cnt = 0

for i in 0...n-1{
    let str = readLine()!.map{String($0)}
    for j in 0...m-1{
        arr[i][j] = str[j]
    }
}

for j in 0...m-1{
    var dic = [String:Int]()
    for i in 0...n-1{
        if let a = dic[arr[i][j]]{
            dic[arr[i][j]]! += 1
        }
        else{
            dic[arr[i][j]] = 1
        }
    }
    var aa = dic.sorted(by: {
        if($0.value == $1.value){
            return $0.key < $1.key
        }
        
        return $0.value > $1.value
        
    })
    //print(aa)
    arr[n][j] = aa[0].key
    for k in 0...n-1{
        if(arr[n][j] != arr[k][j]){
            cnt += 1
        }
    }
    ans += aa[0].key
}



print(ans)
print(cnt)
