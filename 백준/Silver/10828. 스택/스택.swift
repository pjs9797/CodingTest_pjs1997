let n = Int(readLine()!)!

var stack = [String]()

for i in 1...n{
    let input = readLine()!.split(separator: " ").map{String($0)}
    let a = input[0]
    
    if(a == "push"){
        stack.append(input[1])
    }
    else if(a == "top"){
        if(stack.isEmpty){
            print(-1)
        }
        else{
            print(stack.last!)
        }
    }
    else if(a == "size"){
        print(stack.count)
    }
    else if(a == "empty"){
        if(stack.isEmpty){
            print(1)
        }
        else{
            print(0)
        }
    }
    else{
        if(stack.isEmpty){
            print(-1)
        }
        else{
            print(stack.remove(at: stack.count-1))
        }
    }
}
