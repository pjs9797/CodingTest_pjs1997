var input = readLine()!.split(separator: " ").map{Int(String($0))!}

var n = input[0]
var m = input[1]

var arr = Set<String>()
var ans: [String] = []

for i in 1...n{
    var a = readLine()!
    arr.insert(a)
}

for i in 1...m{
    var b = readLine()!
    if(arr.contains(b)){
        ans.append(b)
    }
}

ans.sort()

print(ans.count)
for i in ans{
    print(i)
}
