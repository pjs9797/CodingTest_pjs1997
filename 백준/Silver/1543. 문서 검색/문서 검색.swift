var input = readLine()!.map{String($0)}
var aa:String = ""

for i in 0...input.count-1{
    aa += input[i]
}

var arr = readLine()!
var cnt = 0

for i in 0...input.count-1{
    if(aa.count < arr.count){
        break
    }
    var startindex = aa.index(aa.startIndex, offsetBy: 0)
    var endindex = aa.index(aa.startIndex, offsetBy: arr.count)
    var a:String = String(aa[startindex..<endindex])
    if(a == arr){
        cnt += 1
        aa = String(aa[endindex..<aa.endIndex])
    }
    else{
        var k = aa.index(aa.startIndex, offsetBy: 1)
        aa = String(aa[k..<aa.endIndex])
    }
}
print(cnt)
