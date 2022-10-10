func solution(_ a:Int, _ b:Int) -> Int64 {
    var ans = 0
    var left = 0
    var right = 0
    if(a > b){
        left = b
        right = a
    }
    else{
        left = a
        right = b
    }
    for i in left...right{
        ans += i
    }
    
    return Int64(ans)
}