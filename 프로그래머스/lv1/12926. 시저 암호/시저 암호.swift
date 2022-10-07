func solution(_ s:String, _ n:Int) -> String {
    var dic1 = [String:Int]()
    var dic2 = [String:Int]()
    var str = s.map{String($0)}
    var ans = ""
    
    for word in str{
        if(word == " "){
            ans += " "
        }
        else{
            var index = Int(UnicodeScalar(word)!.value)
            if(index >= 65 && index <= 90){
                index += n
                if(index > 90){
                    index -= 26
                }
            }
            else if(index >= 97 && index <= 122){
                index += n
                if(index > 122){
                    index -= 26
                }
            }
            ans += String(UnicodeScalar(index)!)
        }
        
        
    }
    return ans
}