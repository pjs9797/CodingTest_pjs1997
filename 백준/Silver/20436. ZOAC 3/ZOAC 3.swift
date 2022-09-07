//import Darwin

let dic:[String:(Int,Int)] = ["q":(0,0),"w":(0,1),"e":(0,2),"r":(0,3),"t":(0,4),"y":(0,5),"u":(0,6),"i":(0,7),"o":(0,8),"p":(0,9),"a":(1,0),"s":(1,1),"d":(1,2),"f":(1,3),"g":(1,4),"h":(1,5),"j":(1,6),"k":(1,7),"l":(1,8),"z":(2,0),"x":(2,1),"c":(2,2),"v":(2,3),"b":(2,4),"n":(2,5),"m":(2,6)]

let lefthand:Set<String> = ["q","w","e","r","t","a","s","d","f","g","z","x","c","v"]
let righthand:Set<String> = ["y","u","i","o","p","h","j","k","l","b","n","m"]


let input = readLine()!.split(separator: " ").map{String($0)}
var l = input[0]
var r = input[1]

var lx = 0
var ly = 0

var rx = 0
var ry = 0

let str = readLine()!.map{String($0)}
var time = 0
for k in 0...str.count-1{
    if(lefthand.contains(str[k])){
        if(l == str[k]){
            time += 1
        }
        else{
            var next = dic[str[k]]
            var now = dic[l]
            lx = abs(next!.0 - now!.0)
            ly = abs(next!.1 - now!.1)
            time += lx + ly
            time += 1
            l = str[k]
        }
    }
    else if(righthand.contains(str[k])){
        if(r == str[k]){
            time += 1
        }
        else{
            var next = dic[str[k]]
            var now = dic[r]
            rx = abs(next!.0 - now!.0)
            ry = abs(next!.1 - now!.1)
            time += rx + ry
            time += 1
            r = str[k]
        }
    }
}

print(time)
