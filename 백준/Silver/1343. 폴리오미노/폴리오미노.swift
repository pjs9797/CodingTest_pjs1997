import Foundation

var input = readLine()!

var aa = input.replacingOccurrences(of: "XXXX", with: "AAAA")
var bb = aa.replacingOccurrences(of: "XX", with: "BB")
if(bb.contains("X")){
    print(-1)
}
else{
    print(bb)
}
