var input = readLine()!.split(separator: " ").map{String($0)}
var start = trans(input[0])
var end = trans(input[1])
var allend = trans(input[2])
var cnt = 0
var come = Set<String>()
var out = Set<String>()
while let a = readLine()?.split(separator: " ").map{String($0)}{
    let intime = trans(String(a[0]))
    let name = a[1]
    if(intime <= start && intime >= 0){
        come.insert(name)
    }
    if(intime >= end && intime <= allend){
        out.insert(name)
    }
}

print(come.intersection(out).count)


func trans(_ str:String) -> Int{
    let arr = str.split(separator: ":").map{Int(String($0))!}
    return arr[0] * 60 + arr[1]
}



