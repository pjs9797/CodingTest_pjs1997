let T = Int(readLine()!)!
for _ in 0..<T {
    var dict = Array(repeating: [Int](), count: 26)
    var i = 0
    readLine()!.forEach{
        let num = Int($0.asciiValue!-97)
        dict[num].append(i); i += 1;
    }
    let K = Int(readLine()!)!
    
    var answer = (Int.max, Int.min)
    dict.forEach{
        if $0.count >= K  {
            var l = 0, r = K-1
            var temp = ($0[r]-$0[l]+1, $0[r]-$0[l]+1)
            while r<$0.count-1 {
                r += 1; l += 1
                temp.0 = min($0[r]-$0[l]+1, temp.0)
                temp.1 = max($0[r]-$0[l]+1, temp.1)
            }
            answer.0 = min(answer.0, temp.0)
            answer.1 = max(answer.1, temp.1)
        }
    }
    if answer.0 == Int.max || answer.1 == Int.min  {
        print(-1)
    }else {
        print(answer.0, answer.1)
    }
}

