import Foundation

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 5)
var aa: [Int] = []
var cnt = 0
var row: [Bool] = Array(repeating: false, count: 5)
var col: [Bool] = Array(repeating: false, count: 5)
var q1 = false
var q2 = false

for i in 0...4{
    var input = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    for j in 0...4{
        arr[i][j] = input[j]
    }
}

for i in 0...4{
    var input = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    aa.append(contentsOf: input)
}

for k in 0...aa.count-1{
    Loop: for i in 0...4{
        for j in 0...4{
            if(aa[k] == arr[i][j]){
                arr[i][j] = 0
                break Loop
            }
        }
    }
    for i in 0...4{
        var z = 0
        for j in 0...4{
            if(arr[i][j] == 0){
                z += 1
            }
        }
        if(!row[i] && z == 5){
            cnt += 1
            row[i] = true
        }
    }
    for i in 0...4{
        var z = 0
        for j in 0...4{
            if(arr[j][i] == 0){
                z += 1
            }
        }
        if(!col[i] && z == 5){
            cnt += 1
            col[i] = true
        }
    }
    
    if(!q1 && arr[0][0] == 0 && arr[1][1] == 0 && arr[2][2] == 0 && arr[3][3] == 0 && arr[4][4] == 0){
        cnt += 1
        q1 = true
    }
    if(!q2 && arr[0][4] == 0 && arr[1][3] == 0 && arr[2][2] == 0 && arr[3][1] == 0 && arr[4][0] == 0){
        cnt += 1
        q2 = true
    }
    if(cnt >= 3){
        print(k+1)
        break
    }
}


