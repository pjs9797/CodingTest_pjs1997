let n = Int(readLine()!)!

var set = Set<String>()

for i in 0...n-1{
    let input = readLine()!
    set.insert(input)
}

var arr = set.sorted(by: {
    if($0.count == $1.count){
        return $0 < $1
    }
    return $0.count < $1.count
})

for i in arr{
    print(i)
}
