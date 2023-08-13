var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 5)

for i in 0...4{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...4{
        arr[i][j] = input[j]
    }
}

var order = [Int]()
var ans = 0
var aa = 0

for i in 0...4{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0...4{
        order.append(input[j])
    }
}

Loop:for k in 0...order.count-1{
    for i in 0...4{
        for j in 0...4{
            if(order[k] == arr[i][j]){
                
                arr[i][j] = 0
                ans = check(arr)
                if(ans >= 3){
                    aa = k + 1
                    break Loop
                }
            }
            
        }
    }
}

print(aa)


func check(_ arr:[[Int]]) -> Int{
    var k = 0
    for i in 0...4{
        var a = 0
        for j in 0...4{
            if(arr[i][j] == 0){
                a += 1
            }
        }
        if(a == 5){
            k += 1
        }
    }
    for i in 0...4{
        var a = 0
        for j in 0...4{
            if(arr[j][i] == 0){
                a += 1
            }
        }
        if(a == 5){
            k += 1
        }
    }
    if(arr[0][0] == 0 && arr[1][1] == 0 && arr[2][2] == 0 && arr[3][3] == 0 && arr[4][4] == 0){
        k += 1
    }
    if(arr[4][0] == 0 && arr[3][1] == 0 && arr[2][2] == 0 && arr[1][3] == 0 && arr[0][4] == 0){
        k += 1
    }
    return k
}


