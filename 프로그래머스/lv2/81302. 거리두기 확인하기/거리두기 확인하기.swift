import Foundation

var arr:[[String]] = [[]]
var check = 1

func solution(_ places:[[String]]) -> [Int] {
    var ans:[Int] = []
    for k in places{
        arr = Array(repeating: Array(repeating: "", count: 5), count: 5)
        for i in 0...k.count-1{
            let a = k[i].map{String($0)}
            for j in 0...4{
                arr[i][j] = a[j]
            }
        }
        check = 1
        for i in 0...4{
            for j in 0...4{
                if(arr[i][j] == "P"){
                    dfs(i,j)
                }
                
            }
        }
        ans.append(check)
        
    }
    return ans
}



func dfs(_ x:Int, _ y:Int){
    let xx = [0,0,-1,1]
    let yy = [1,-1,0,0]
    for k in 0...3{
        let dx = x + xx[k]
        let dy = y + yy[k]
        if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
            if(arr[dx][dy] == "P"){
                check = 0
                return
            }
        }
    }
    
    var dx = 0
    var dy = 0
    
    dx = x + 0
    dy = y + 2
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx][dy-1] == "O"){
                check = 0
                return
            }
        }
    }
    dx = x + 0
    dy = y - 2
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx][dy+1] == "O"){
                check = 0
                return
            }
        }
    }
    dx = x + 2
    dy = y + 0
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx-1][dy] == "O"){
                check = 0
                return
            }
        }
    }
    dx = x - 2
    dy = y + 0
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx+1][dy] == "O"){
                check = 0
                return
            }
        }
    }
    
    dx = x + 1
    dy = y + 1
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx-1][dy] == "O" || arr[dx][dy-1] == "O"){
                check = 0
                return
            }
        }
    }
    
    dx = x + 1
    dy = y - 1
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx-1][dy] == "O" || arr[dx][dy+1] == "O"){
                check = 0
                return
            }
        }
    }
    
    dx = x - 1
    dy = y + 1
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx+1][dy] == "O" || arr[dx][dy-1] == "O"){
                check = 0
                return
            }
        }
    }
    
    dx = x - 1
    dy = y - 1
    if(dx >= 0 && dy >= 0 && dx < 5 && dy < 5){
        if(arr[dx][dy] == "P"){
            if(arr[dx+1][dy] == "O" || arr[dx][dy+1] == "O"){
                check = 0
                return
            }
        }
    }
    
}
