let n = Int(readLine()!)!

for _ in 1...n{
    let str = readLine()!.split(separator: " ").map{String($0)}
    var dic = [String:Int]()
    for i in 0...25{
        var arp = String(UnicodeScalar(97 + i)!)
        dic[arp] = 0
    }
    for i in 0...str.count-1{
        for j in str[i]{
            dic[String(j)]! += 1
        }
    }
    var ans = dic.sorted(by: {
        $0.value > $1.value
    })
    if(ans[0].value == ans[1].value){
        print("?")
    }
    else{
        print(ans[0].key)
    }
}
