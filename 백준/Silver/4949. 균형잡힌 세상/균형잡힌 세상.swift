
while(true){
    var input = readLine()!.map{String($0)}
    if(input.count == 1 && input[0] == "."){
        break
    }
    var arr: [String] = []
    var check = 0
    for i in 0...input.count-1{
        if(i == 0){
            if(input[i] == ")" || input[i] == "]"){
                check = 1
                break
            }
            else if(input[i] == "("){
                arr.append("(")
            }
            else if(input[i] == "["){
                arr.append("[")
            }
        }
        else{
            if(input[i] == "("){
                arr.append("(")
            }
            else if(input[i] == "["){
                arr.append("[")
            }
            else if(input[i] == ")"){
                if(!arr.isEmpty){
                    if(arr.last == "("){
                        arr.popLast()
                    }
                    else{
                        check = 1
                        break
                    }
                }
                else{
                    check = 1
                    break
                }
            }
            else if(input[i] == "]"){
                if(!arr.isEmpty){
                    if(arr.last == "["){
                        arr.popLast()
                    }
                    else{
                        check = 1
                        break
                    }
                }
                else{
                    check = 1
                    break
                }
            }
        }
    }
    if(check == 1 || !arr.isEmpty){
        print("no")
    }
    else{
        print("yes")
    }
}
