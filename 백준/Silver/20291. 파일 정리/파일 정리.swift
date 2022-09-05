let n = Int(readLine()!)!

var dic = [String:Int]()

for i in 1...n{
    let str = readLine()!.split(separator: ".").map{String($0)}
    if let a = dic[str[1]] {
        dic[str[1]]! += 1
    }
    else{
        dic[str[1]] = 1
    }
}
var ans = dic.sorted(by: {$0.0 < $1.0})


for i in ans{
    print(i.key, i.value)
}
