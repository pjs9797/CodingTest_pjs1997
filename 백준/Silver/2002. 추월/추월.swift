var n = Int(readLine()!)!

var arr:[String] = []
for i in 0...n-1{
    var input = readLine()!
    arr.append(input)
}


var cnt = 0
var i = 0
while(i < n){
    var input = readLine()!
    if(input == arr[i]){
        
    }
    else{
        for j in 0...arr.count-1{
            if(input == arr[j]){
                arr.remove(at: j)
                cnt += 1
                i -= 1
                n -= 1
                break
            }
        }
    }
    i += 1
}

print(cnt)
