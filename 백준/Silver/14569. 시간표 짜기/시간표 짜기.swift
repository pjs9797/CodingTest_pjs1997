import Foundation

var n = Int(readLine()!)!
var time:[[Int]] = [[]]
for i in 0...n-1{
    var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    input.removeFirst()
    time.append(input)
}
time.removeFirst()

var m = Int(readLine()!)!
var arr:[[Int]] = [[]]
for i in 0...m-1{
    var input = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    input.removeFirst()
    arr.append(input)
}
arr.removeFirst()


for i in 0...m-1{
    var cnt = 0
    var aa = arr[i]
    
    for j in 0...time.count-1{
        var bb = time[j]
        var z = 0
        for k in 0...bb.count-1{
            if(!aa.contains(bb[k])){
                z = 1
            }
        }
        if(z == 0){
            cnt += 1
        }
    }
    print(cnt)
    
}
