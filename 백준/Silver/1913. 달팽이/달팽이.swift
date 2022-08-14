let n = Int(readLine()!)!
let num = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)

var a = 0
var b = 0
var check = 0
var z = n * n
aa(0,0,1)

for i in 0...n-1{
    for j in 0...n-1{
        print(arr[i][j], terminator: " ")
    }
    print()
}
print(a+1,b+1)

func aa(_ x:Int, _ y:Int, _ c:Int){
    var x = x
    var y = y
    check = c
    if(check == 1){
        for i in 0...n-1{
            if(arr[i][y] == 0){
                if(z == num){
                    a = i
                    b = y
                }
                arr[i][y] = z
                z -= 1
                x = i
            }
        }
        if(z == 0){
            check = 0
            return
        }
        else{
            check = 2
            aa(x,y,check)
        }
    }
    else if(check == 2){
        for i in 0...n-1{
            if(arr[x][i] == 0){
                if(z == num){
                    a = x
                    b = i
                }
                arr[x][i] = z
                z -= 1
                y = i
            }
        }
        check = 3
        aa(x, y, check)
    }
    else if(check == 3){
        for i in stride(from: n-1, through: 0, by: -1){
            if(arr[i][y] == 0){
                if(z == num){
                    a = i
                    b = y
                }
                arr[i][y] = z
                z -= 1
                x = i
            }
        }
        check = 4
        aa(x,y,check)
    }
    else if(check == 4){
        for i in stride(from: n-1, through: 0, by: -1){
            if(arr[x][i] == 0){
                if(z == num){
                    a = x
                    b = i
                }
                arr[x][i] = z
                z -= 1
                y = i
            }
        }
        check = 1
        aa(x, y, check)
    }
    
}
