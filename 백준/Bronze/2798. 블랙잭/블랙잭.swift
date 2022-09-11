let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var ans = 0
var min = 1000000
var a = 0
for i in 0...n-3{
    for j in i+1...n-2{
        for k in j+1...n-1{
            ans = arr[i] + arr[j] + arr[k]
            //print(arr[i],arr[j],arr[k],ans)
            
            if(m - ans >= 0 && m - ans < min){
                
                min = m - ans
                a = ans
            }
        }
    }
}

print(a)
