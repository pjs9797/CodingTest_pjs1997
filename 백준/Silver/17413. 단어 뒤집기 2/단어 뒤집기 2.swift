while let input = readLine(){
    let str = input.map{String($0)}
    var ans = ""
    var ori = ""
    var check = 0
    var stack = [String]()
    for i in 0...str.count-1{
        if(str[i] == "<"){
            if(!stack.isEmpty){
                for i in stride(from: stack.count-1, to: -1, by: -1){
                    ans += stack[i]
                }
                stack.removeAll()
            }
            ori += str[i]
            check = 1
        }
        else if(str[i] == ">"){
            ori += str[i]
            ans += ori
            ori = ""
            check = 0
        }
        else{
            if(check == 1){
                ori += str[i]
            }
            else{
                if(str[i] == " "){
                    for i in stride(from: stack.count-1, to: -1, by: -1){
                        ans += stack[i]
                    }
                    ans += " "
                    stack.removeAll()
                }
                else{
                    stack.append(str[i])
                }
                if(i == str.count-1){
                    for i in stride(from: stack.count-1, to: -1, by: -1){
                        ans += stack[i]
                    }
                }
            }
        }
    }
    print(ans)
}


