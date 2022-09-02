let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let m = input[1]

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for _ in 1...m{
    let order = readLine()!.split(separator: " ").map{Int(String($0))!}
    let b = order[1]
    let c = order[2]
    if(order[0] == 1){
        arr[b-1] = c
    }
    else if(order[0] == 2){
        for i in b-1...c-1{
            if(arr[i] == 0){
                arr[i] = 1
            }
            else{
                arr[i] = 0
            }
        }
    }
    else if(order[0] == 3){
        for i in b-1...c-1{
            arr[i] = 0
        }
    }
    else{
        for i in b-1...c-1{
            arr[i] = 1
        }
    }
    
}

for i in arr{
    print(i,terminator: " ")
}

