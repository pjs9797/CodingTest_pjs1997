var input = readLine()!.map{String($0)}

var arr = [String]()
var minus = [String]()

var num = ""
var check = 0

for i in 0...input.count-1{
    if(input[i] != "+" && input[i] != "-"){
        num += input[i]
    }
    else if(input[i] == "+"){
        if(check == 1){
            minus.append(num)
            num = ""
        }
        else{
            arr.append(num)
            num = ""
        }
    }
    else if(input[i] == "-"){
        if(check == 0){
            arr.append(num)
            check = 1
            num = ""
        }
        else{
            minus.append(num)
            check = 1
            num = ""
        }
    }
    if(i == input.count-1){
        if(check == 1){
            minus.append(num)
        }
        else{
            arr.append(num)
        }
    }
}

var p = 0
var m = 0

for i in arr{
    p += Int(i)!
}

for i in minus{
    m += Int(i)!
}

print(p-m)


//5-2-3-6+4+2-1+4
//10+20+30-40
