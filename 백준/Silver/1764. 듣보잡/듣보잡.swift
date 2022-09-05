let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var A = Set<String>()
var B = Set<String>()

for i in 1...n{
    A.insert(readLine()!)
}
for i in 1...m{
    let a = readLine()!
    if(A.contains(a)){
        B.insert(a)
    }
}

var ans = B.sorted()
print(ans.count)
for i in ans{
    print(i)
}
