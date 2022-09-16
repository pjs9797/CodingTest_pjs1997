let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
var money = input[1]

var arr = [Int]()

for _ in 1...n{
    arr.append(Int(readLine()!)!)
}

var cnt = 0

for i in stride(from: n-1, through: 0, by: -1){
    
    if(money / arr[i] != 0){
        var a = money / arr[i]
        cnt += money / arr[i]
        money = money - (arr[i] * a)
    }
    if(money <= 0){
        break
    }
}

print(cnt)
