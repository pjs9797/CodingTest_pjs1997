let n = Int(readLine()!)!

let distance = readLine()!.split(separator: " ").map{Int(String($0))!}
let point = readLine()!.split(separator: " ").map{Int(String($0))!}

var dp:[Int] = Array(repeating: 0, count: n)



var Min = point[0]
var cnt = distance[0] * point[0]
if(n == 1){
    print(cnt)
}
else{
    for i in 1...distance.count-1{
        if(Min > point[i]){
            Min = point[i]
            cnt += Min * distance[i]
        }
        else{
            cnt += Min * distance[i]
        }
    }
    
    print(cnt)
}
