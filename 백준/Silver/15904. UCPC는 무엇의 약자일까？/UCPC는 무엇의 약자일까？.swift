let str = readLine()!.map{String($0)}

var ans = ""

for i in 0...str.count-1{
    if(ans == "" && str[i] == "U"){
        ans += "U"
    }
    if(ans == "U" && str[i] == "C"){
        ans += "C"
    }
    if(ans == "UC" && str[i] == "P"){
        ans += "P"
    }
    if(ans == "UCP" && str[i] == "C"){
        ans += "C"
    }
}


if(ans == "UCPC"){
    print("I love UCPC")
}
else{
    print("I hate UCPC")
}
