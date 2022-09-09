let testcase = Int(readLine()!)!

for _ in 1...testcase{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let n = input[0]
    var d = input[1]
    var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    for i in 0...n-1{
        let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
        for j in 0...n-1{
            arr[i][j] = input2[j]
        }
    }
    if(n == 1){
        print(arr[0][0])
    }
    else{
        var a = arr
        if(d < 0){
            d = d + 360
        }
        if(d == 0){
            for i in 0...n-1{
                for j in 0...n-1{
                    print(a[i][j],terminator: " ")
                }
                print()
            }
        }
        else{
            d = d / 45
                    
            for i in 1...d{
                a = rota(n,a)
            }
            
            for i in 0...n-1{
                for j in 0...n-1{
                    print(a[i][j],terminator: " ")
                }
                print()
            }
        }
    }
    
}



func rota(_ n:Int, _ ori:[[Int]]) -> [[Int]]{
    var arr = ori
    let n = n - 1
    let k = n / 2
    
    for i in 0...k-1{
        arr[i][k] = ori[i][i]
    }
    
//    arr[0][0] = arr[0][2]
//    arr[1][1] = arr[1][2]
    
    for i in 0...k-1{
        arr[i][n-i] = ori[i][k]
    }
    
//    arr[0][2] = arr[0][4]
//    arr[1][2] = arr[1][3]
    
    for i in 0...k-1{
        arr[k][n-i] = ori[i][n-i]
    }
    
//    arr[0][4] = arr[2][4]
//    arr[1][3] = arr[2][3]
    
    for i in 0...k-1{
        arr[n-i][n-i] = ori[k][n-i]
    }
    
//    arr[2][4] = arr[4][4]
//    arr[2][3] = arr[3][3]
    
    for i in 0...k-1{
        arr[n-i][k] = ori[n-i][n-i]
    }

//    arr[4][4] = arr[4][2]
//    arr[3][3] = arr[3][2]
    
    for i in 0...k-1{
        arr[n-i][i] = ori[n-i][k]
    }
    
//    arr[4][2] = arr[4][0]
//    arr[3][2] = arr[3][1]
    
    for i in 0...k-1{
        arr[k][i] = ori[n-i][i]
    }
    
//    arr[4][0] = arr[2][0]
//    arr[3][1] = arr[2][1]
    
    for i in 0...k-1{
        arr[i][i] = ori[k][i]
    }
    
//    arr[2][0] = arr[0][0]
//    arr[2][1] = arr[1][1]
    return arr
}





