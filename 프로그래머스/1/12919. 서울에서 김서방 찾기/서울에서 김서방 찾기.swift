func solution(_ seoul:[String]) -> String {
    var a = 0
    for i in 0..<seoul.count{
        if seoul[i] == "Kim"{
            a = i
        }
    }
    return "김서방은 \(a)에 있다"
}
