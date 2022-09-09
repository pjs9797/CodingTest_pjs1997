var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 19), count: 19)
var sixomok = false

var x = 0
var y = 0
var color = 0

for i in 0...18{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...18{
        arr[i][j] = input[j]
    }
}

Loop:for i in 0...18{
    for j in 0...18{
        if(arr[i][j] != 0){
            let num = arr[i][j]
            if(rowCheck(num,i,j)){
                color = num
                x = i
                y = j
                break Loop
            }
            if(colCheck(num,i,j)){
                color = num
                x = i
                y = j
                break Loop
            }
            if(rightdownCheck(num,i,j)){
                color = num
                x = i
                y = j
                break Loop
            }
            if(leftdownCheck(num,i,j)){
                color = num
                x = i+4
                y = j-4
                break Loop
            }
            
        }
    }
}
if(color == 0){
    print(0)
}
else{
    print(color)
    print(x+1,y+1)
}

func leftdownCheck(_ num:Int, _ i:Int, _ j:Int) -> Bool{
    var a = 0
    for k in 0...4{
        if(rangeCheck(i+k, j-k)){
            if(arr[i+k][j-k] == num){
                continue
            }
            else{
                a = 1
                break
            }
        }
        else{
            a = 1
            break
        }
    }
    if(a == 0){
        if(rangeCheck(i-1, j+1)){
            if(arr[i-1][j+1] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
        if(!sixomok && rangeCheck(i+5, j-5)){
            if(arr[i+5][j-5] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
    }
    else{
        return false
    }
    if(sixomok){
        return false
    }
    else{
        return true
    }
}

func rightdownCheck(_ num:Int, _ i:Int, _ j:Int) -> Bool{
    var a = 0
    for k in 0...4{
        if(rangeCheck(i+k, j+k)){
            if(arr[i+k][j+k] == num){
                continue
            }
            else{
                a = 1
                break
            }
        }
        else{
            a = 1
            break
        }
    }
    if(a == 0){
        if(rangeCheck(i-1, j-1)){
            if(arr[i-1][j-1] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
        if(!sixomok && rangeCheck(i+5, j+5)){
            if(arr[i+5][j+5] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
    }
    else{
        return false
    }
    if(sixomok){
        return false
    }
    else{
        return true
    }
}

func colCheck(_ num:Int, _ i:Int, _ j:Int) -> Bool{
    var a = 0
    for k in 0...4{
        if(rangeCheck(i+k, j)){
            if(arr[i+k][j] == num){
                continue
            }
            else{
                a = 1
                break
            }
        }
        else{
            a = 1
            break
        }
    }
    if(a == 0){
        if(rangeCheck(i-1, j)){
            if(arr[i-1][j] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
        if(!sixomok && rangeCheck(i+5, j)){
            if(arr[i+5][j] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
    }
    else{
        return false
    }
    if(sixomok){
        return false
    }
    else{
        return true
    }
}

func rowCheck(_ num:Int, _ i:Int, _ j:Int) -> Bool{
    var a = 0
    for k in 0...4{
        if(rangeCheck(i, j+k)){
            if(arr[i][j+k] == num){
                continue
            }
            else{
                a = 1
                break
            }
        }
        else{
            a = 1
            break
        }
    }
    if(a == 0){
        if(rangeCheck(i, j-1)){
            if(arr[i][j-1] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
        if(!sixomok && rangeCheck(i, j+5)){
            if(arr[i][j+5] == num){
                sixomok = true
            }
            else{
                sixomok = false
            }
        }
    }
    else{
        return false
    }
    if(sixomok){
        return false
    }
    else{
        return true
    }
}

func rangeCheck(_ i:Int, _ j:Int) -> Bool{
    if(i >= 0 && i < 19 && j >= 0 && j < 19){
        return true
    }
    else{
        return false
    }
}





