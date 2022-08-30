let start = readLine()!.split(separator: ":").map{String($0)}
let end = readLine()!.split(separator: ":").map{String($0)}

var Hour = 0
var Min = 0
var Second = 0

var startHour = Int(start[0])!
var startMin = Int(start[1])!
var startsecond = Int(start[2])!

var endHour = Int(end[0])!
var endMin = Int(end[1])!
var endSecond = Int(end[2])!

if(startsecond > endSecond){
    Second = endSecond + 60 - startsecond
    endMin -= 1
}
else{
    Second = endSecond - startsecond
}
if(startMin > endMin){
    Min = endMin - startMin + 60
    endHour -= 1
}
else{
    Min = endMin - startMin
}
if(startHour > endHour){
    Hour = endHour - startHour + 24
}
else{
    Hour = endHour - startHour
}


var a = ""
var b = ""
var c = ""

if(Hour > 9){
    a = String(Hour)
}
else{
    a = "0" + String(Hour)
}

if(Min > 9){
    b = String(Min)
}
else{
    b = "0" + String(Min)
}
if(Second > 9){
    c = String(Second)
}
else{
    c = "0" + String(Second)
}
if(a == "00" && b == "00" && c == "00"){
    print("24:00:00")
}
else{
    print(a + ":" + b + ":" + c)
}
