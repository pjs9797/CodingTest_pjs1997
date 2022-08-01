var n = Int(readLine()!)!


for _ in 0...n-1{
    var input = readLine()!.map{String($0)}
    var str = ""
    for i in input{
        str += i
    }
    var check = 0
    var arr:[String] = []
    for i in stride(from: input.count-1, to: 0, by: -1){
        if(input[i] <= input[i-1]){
            arr.append(input[i])
            continue
        }
        else{
            check = 1
            arr.append(input[i])
            var a = input[i-1]
            arr.sort()
            
            var index = str.index(str.startIndex, offsetBy: i-1)
            var ans = String(str[str.startIndex..<index])
            for i in 0...arr.count-1{
                if(a < arr[i]){
                    ans += arr[i]
                    arr.remove(at: i)
                    arr.insert(a, at: i)
                    break
                }
            }
            
            for i in arr{
                ans += i
            }
            print(ans)
            break
        }
    }
    if(check == 0){
        print(str)
    }
}
