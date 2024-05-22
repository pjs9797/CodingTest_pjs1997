func solution(_ phone_number:String) -> String {
    var last = phone_number.suffix(4)
    var a = phone_number.count - 4
    var ans = ""
    if a > 0 {
        for i in 0..<a{
            ans += "*"
        }
    }
    ans += last
    
    return ans
}
