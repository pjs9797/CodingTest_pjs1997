let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var a = input[0]
var b = input[1]
var c = input[2]
var d = input[3]
var e = input[4]
var f = input[5]

for i in -999...999{
    for j in -999...999{
        if(a*i+b*j == c && d*i+e*j == f){
            print(i,j)
        }
    }
}
