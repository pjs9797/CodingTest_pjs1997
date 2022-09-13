let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

let length = String(n).count
var max = 0

find(0,"")
print(max)

func find(_ cnt:Int, _ str:String){
    if(cnt == length){
        return
    }
    var str = str
    for i in 0...arr.count-1{
        str += String(arr[i])
        max = check(n, str)
        //print(str)
        find(cnt+1, str)
        str.removeLast()
        
    }
}

func check(_ n:Int , _ str:String) -> Int{
    
    let find = Int(str)!
    if(find <= n){
        if(find >= max){
            max = find
        }
    }
    return max
}
