func solution(_ s:String) -> String {
    var ans = ""
    var cnt = 0
    for i in s{
        if(i == " "){
            cnt = 0
            ans += " "
        }
        else{
            if(cnt % 2 == 0){
                var word = i.uppercased()
                ans += word
            }
            else{
                var word = i.lowercased()
                ans += word
            }
            cnt += 1
        }
    }
    return ans
}