import Foundation

struct Stack<T>{
    var elements: [T] = []
    
    var count: Int{
        return elements.count
    }
    var isEmpty: Bool{
        return elements.isEmpty
    }
    mutating func push(_ element: T){
        elements.append(element)
    }
    mutating func top() -> T?{
        return elements.last
    }
    mutating func pop() -> T?{
        return elements.popLast()
    }
}


var n = Int(readLine()!)!

for i in 0...n-1{
    var arr = readLine()!.map{String($0)}
    var stack = Stack<String>()
    var check = 0
    for j in 0...arr.count-1{
        if(j == 0){
            if(arr[j] == ")"){
                check = 1
                break
            }
            else{
                stack.push("(")
            }
        }
        else{
            if(arr[j] == "("){
                stack.push("(")
            }
            else{
                if(!stack.isEmpty){
                    stack.pop()
                }
                else{
                    check = 1
                    break
                }
            }
        }
    }
    if(!stack.isEmpty){
        check = 1
    }
    
    if(check == 0){
        print("YES")
    }
    else{
        print("NO")
    }
}
