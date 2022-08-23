let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var sum = 0
var max = 0
var ans = [Int]()
for i in 0...m-1{
    sum += arr[i]
}
ans.append(sum)
for i in m...arr.count-1{
    sum += arr[i]
    sum -= arr[i-m]
    ans.append(sum)
}
ans.sort()
max = ans[ans.count-1]
var cnt = 0
for i in stride(from: ans.count-1, through: 0, by: -1){
    if(ans[i] == max){
        cnt += 1
    }
    else{
        break
    }
}
if(max == 0){
    print("SAD")
}
else{
    print(max)
    print(cnt)
}
