let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var set = Set<Int>()
var dic = [Int:Int]()
for i in 0...arr.count-1{
    set.insert(arr[i])
}

var sortedSet = set.sorted()

var ans:[Int] = []
for i in 0...sortedSet.count-1{
    dic[sortedSet[i]] = i
}

for i in arr{
    print(dic[i]!,terminator: " ")
}
