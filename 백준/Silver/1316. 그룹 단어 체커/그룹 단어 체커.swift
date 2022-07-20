import Foundation

var n = Int(readLine()!)!
var sum = 0
var a: [String] = []

for _ in 1...n{
    let arr = readLine()!.map{ String($0) }
    var z = 0
    var a: [String] = []
    a.append(arr[0])
    if(arr.count > 1 ){
        for i in 1...arr.count-1{
            if(arr[i] != arr[i-1]){
                if(a.contains(arr[i])){
                    z = 1
                    break
                }
                else{
                    a.append(arr[i])
                }
            }
            else{
                if(a.contains(arr[i])){
                    continue
                }
                else{
                    z = 1
                    break
                }
            }
        }
    }
    
    if(z != 1){
        sum+=1
    }
}
print(sum)


