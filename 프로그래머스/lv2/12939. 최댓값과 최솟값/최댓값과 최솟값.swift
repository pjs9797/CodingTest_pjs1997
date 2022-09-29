func solution(_ s:String) -> String {
    var str = s.split(separator: " ").map{Int(String($0))!}
    var max = str.max()!
    var min = str.min()!
    
    return String(min) + " " + String(max)
}
