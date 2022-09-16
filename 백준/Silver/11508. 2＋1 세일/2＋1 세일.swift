let n = Int(readLine()!)!

var arr = [Int]()

for i in 1...n{
    arr.append(Int(readLine()!)!)
}

arr.sort(by: {$0 > $1})

var ans = 0

for i in 0...arr.count-1{
    
    if((i+1) % 3 != 0){
        ans += arr[i]
    }
    
}

print(ans)
