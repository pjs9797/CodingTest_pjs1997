var arr:[Int] = Array(repeating: 0, count: 10001)

for i in 1...10000{
    if(aa(i) <= 10000){
        arr[aa(i)] = 1
    }
}

for i in 1...10000{
    if(arr[i] == 0){
        print(i)
    }
}


func aa(_ x:Int) -> Int{
    var a = String(x).map{String($0)}
    var ans = x
    for i in 0...a.count-1{
        ans += Int(a[i])!
    }
    return ans
}
