let input = readLine()!

var arr:[String] = []

var str = ""
for i in 0...input.count-1{
    if(input[input.index(input.startIndex, offsetBy: i)] != ":"){
        str += String(input[input.index(input.startIndex, offsetBy: i)])
    }
    else{
        arr.append(str)
        str = ""
    }
    if(i == input.count-1){
        arr.append(str)
    }
}

var count = 0
var check = 0

if(arr[0] == "" && arr[1] == ""){
    check = 1
}
else if(arr[arr.count-1] == "" && arr[arr.count-2] == ""){
    check = 2
}

for i in arr{
    if(i != ""){
        count += 1
    }
}
count = 8 - count


if(check == 0){
    var i = 0
    while(i < arr.count){
        if(arr[i] == ""){
            arr.remove(at: i)
            for _ in 1...count{
                arr.insert("0000", at: i)
                i += 1
            }
        }
        if(arr[i].count != 4){
            var str = ""
            for k in 1...4-arr[i].count{
                str += "0"
            }
            str += arr[i]
            arr[i] = str
        }
        i += 1
    }
}
else if(check == 1){
    arr.remove(at: 0)
    arr.remove(at: 0)
    for _ in 1...count{
        arr.insert("0000", at: 0)
        
    }
    for i in 0...arr.count-1{
        if(arr[i] != ""){
            if(arr[i].count != 4){
                var str = ""
                for k in 1...4-arr[i].count{
                    str += "0"
                }
                str += arr[i]
                arr[i] = str
            }
        }
    }
}
else{
    for i in 0...arr.count-3{
        if(arr[i] != ""){
            if(arr[i].count != 4){
                var str = ""
                for k in 1...4-arr[i].count{
                    str += "0"
                }
                str += arr[i]
                arr[i] = str
            }
        }
    }
    arr.remove(at: arr.count-1)
    arr.remove(at: arr.count-1)
    for _ in 1...count{
        arr.append("0000")
        
    }
}

for i in 0...arr.count-1{
    if(i != arr.count-1){
        print(arr[i],terminator: ":")
    }
    else{
        print(arr[i])
    }
}

