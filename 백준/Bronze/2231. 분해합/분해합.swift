let input = readLine()!.map{String($0)}

var str = ""
for i in 0...input.count-1{
    str += input[i]
}
var length = input.count
var start = 0
var end = Int(str)!

if(end - length * 9 >= 0){
    start = end - length * 9
}

for i in start...end{
    var result = i
    
    var a = String(i).map{String($0)}
    for j in 0...a.count-1{
        result += Int(a[j])!
    }
    if(end == result){
        print(i)
        break
    }
    if(i == end){
        if(end != result){
            print(0)
        }
    }
}



