let n = Int(readLine()!)!

for _ in 1...n{
    let input = readLine()!.map{String($0)}
    var arr = [String]()
    var check = 0
    for i in 0...input.count-1{
        if(input[i] == "("){
            arr.append("(")
        }
        else{
            if(arr.isEmpty){
                check = 1
                break
            }
            else{
                arr.removeLast()
            }
        }
    }
    if(check == 0){
        if(arr.isEmpty){
            print("YES")
        }
        else{
            print("NO")
        }
    }
    else{
        print("NO")
    }
}
