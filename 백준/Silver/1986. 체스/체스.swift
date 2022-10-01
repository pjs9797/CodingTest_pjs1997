let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

var chess:[[String]] = Array(repeating: Array(repeating: "A", count: m), count: n)

let queen = readLine()!.split(separator: " ").map{Int(String($0))!}
var queenCount = queen[0]
var index = 1

while(queenCount > 0){
    let x = queen[index] - 1
    let y = queen[index+1] - 1
    chess[x][y] = "Q"
    index += 2
    queenCount -= 1
}

let knight = readLine()!.split(separator: " ").map{Int(String($0))!}
var knightCount = knight[0]
index = 1

while(knightCount > 0){
    let x = knight[index] - 1
    let y = knight[index+1] - 1
    chess[x][y] = "K"
    index += 2
    knightCount -= 1
}


let pawn = readLine()!.split(separator: " ").map{Int(String($0))!}
var pawnCount = pawn[0]
index = 1

while(pawnCount > 0){
    let x = pawn[index] - 1
    let y = pawn[index+1] - 1
    chess[x][y] = "P"
    index += 2
    pawnCount -= 1
}



let dx = [2,2,-2,-2,-1,1,-1,1]
let dy = [-1,1,-1,1,2,2,-2,-2]



for i in 0...n-1{
    for j in 0...m-1{
        if(chess[i][j] == "Q"){
            queenCheck(i, j)
        }
        if(chess[i][j] == "K"){
            knightCheck(i, j)
        }
    }
}

//for i in 0...n-1{
//    for j in 0...m-1{
//        print(chess[i][j],terminator: " ")
//    }
//    print()
//}

var ans = 0
for i in 0...n-1{
    for j in 0...m-1{
        if(chess[i][j] == "A"){
            ans += 1
        }
    }
}
print(ans)



func queenCheck(_ x:Int,_ y:Int){
    var xindex = 0
    var yindex = 1
    while(true){
        let dy = y + yindex
        if(check(x, dy)){
            if(chess[x][dy] == "A" || chess[x][dy] == "C"){
                chess[x][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        
        yindex += 1
    }
    
    xindex = 0
    yindex = -1
    while(true){
        let dy = y + yindex
        if(check(x, dy)){
            if(chess[x][dy] == "A" || chess[x][dy] == "C"){
                chess[x][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        
        yindex -= 1
    }
    
    xindex = -1
    yindex = 0
    while(true){
        let dx = x + xindex
        if(check(dx, y)){
            if(chess[dx][y] == "A" || chess[dx][y] == "C"){
                chess[dx][y] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        
        xindex -= 1
    }
    
    xindex = 1
    yindex = 0
    while(true){
        let dx = x + xindex
        if(check(dx, y)){
            if(chess[dx][y] == "A" || chess[dx][y] == "C"){
                chess[dx][y] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        
        xindex += 1
    }
    
    
    xindex = 1
    yindex = 1
    while(true){
        let dx = x + xindex
        let dy = y + yindex
        if(check(dx, dy)){
            if(chess[dx][dy] == "A" || chess[dx][dy] == "C"){
                chess[dx][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        xindex += 1
        yindex += 1
    }
    
    xindex = -1
    yindex = -1
    while(true){
        let dx = x + xindex
        let dy = y + yindex
        if(check(dx, dy)){
            if(chess[dx][dy] == "A" || chess[dx][dy] == "C"){
                chess[dx][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        xindex -= 1
        yindex -= 1
    }
    
    xindex = -1
    yindex = 1
    while(true){
        let dx = x + xindex
        let dy = y + yindex
        if(check(dx, dy)){
            if(chess[dx][dy] == "A" || chess[dx][dy] == "C"){
                chess[dx][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        xindex -= 1
        yindex += 1
    }
    
    xindex = 1
    yindex = -1
    while(true){
        let dx = x + xindex
        let dy = y + yindex
        if(check(dx, dy)){
            if(chess[dx][dy] == "A" || chess[dx][dy] == "C"){
                chess[dx][dy] = "C"
            }
            else{
                break
            }
        }
        else{
            break
        }
        xindex += 1
        yindex -= 1
    }
}


func knightCheck(_ x:Int,_ y:Int){
    for k in 0...7{
        let dx = x + dx[k]
        let dy = y + dy[k]
        if(check(dx, dy)){
            if(chess[dx][dy] == "A"){
                chess[dx][dy] = "C"
            }
        }
    }
}


func check(_ x:Int,_ y:Int) -> Bool{
    if(x >= 0 && y >= 0 && x < n && y < m){
        return true
    }
    else{
        return false
    }
}
