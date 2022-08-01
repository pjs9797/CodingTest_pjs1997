var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0]
var m = input[1]

var set = Set<String>()
for i in 0...n-1{
    var a = readLine()!
    set.insert(a)
}
var cnt = 0
for j in 0...m-1{
    var b = readLine()!
    if(set.contains(b)){
        cnt += 1
    }
}

print(cnt)
