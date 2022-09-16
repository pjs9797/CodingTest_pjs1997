//B B B R B R B R
//
//B B B R R R R R
//
//B B R B R R R R B
//
//B B R B R B B R

let n = Int(readLine()!)!

let arr = readLine()!.map{String($0)}

var b = 0

if(arr[0] == "B"){
    b = 1
}
else{
    b = 0
}
if(n != 1){
    for i in 1...n-1{
        if(arr[i] == "B"){
            if(arr[i-1] == "B"){
                continue
            }
            else{
                b += 1
            }
        }
    }
}

var r = 0

if(arr[0] == "R"){
    r = 1
}
else{
    r = 0
}
if(n != 1){
    for i in 1...n-1{
        if(arr[i] == "R"){
            if(arr[i-1] == "R"){
                continue
            }
            else{
                r += 1
            }
        }
    }
}

if(r <= b){
    print(r + 1)
}
else{
    print(b + 1)
}

