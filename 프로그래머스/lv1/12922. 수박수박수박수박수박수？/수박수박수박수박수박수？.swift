func solution(_ n:Int) -> String {
    var ans = ""
    for i in 1...n{
        if(i%2 == 0){
            ans += "박"
        }
        else{
            ans += "수"
        }
    }
    return ans
}