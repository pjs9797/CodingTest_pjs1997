import Foundation

func solution(_ s:String) -> Int {
    var length = s.count-1
    var ans = 0
    var str = s
    for x in 0...length{
        var start = str.index(str.startIndex, offsetBy: x)
        var end = str.index(str.startIndex, offsetBy: x+length)
        var checkstr = String(str[start...end])
        var a = 0
        var b = 0
        var c = 0
        var check = false
        var stack = [Character]()
        
        Loop:for i in checkstr{
            check = false
            if(stack.isEmpty){
                if(i == "(" || i == "[" || i == "{"){
                    stack.append(i)
                    //print(1,stack)
                }
                else if(i == ")" || i == "]" || i == "}"){
                    break Loop
                }
            }
            else{
                if(i == "(" || i == "[" || i == "{"){
                    //print(2,stack)
                    stack.append(i)
                }
                else if(i == ")"){
                    if(stack.last == "("){
                        //print(3,stack)
                        stack.removeLast()
                    }
                    else{
                        break Loop
                    }
                }
                else if(i == "]"){
                    if(stack.last == "["){
                        stack.removeLast()
                    }
                    else{
                        break Loop
                    }
                }
                else if(i == "}"){
                    if(stack.last == "{"){
                        stack.removeLast()
                    }
                    else{
                        break Loop
                    }
                }
            }
            if(stack.isEmpty){
                check = true
                //print(checkstr,ans)
            }
        }
        if(check == true){
            ans += 1
        }
       //print(checkstr,ans)
        str += String(str[start])
    }
    return ans
}