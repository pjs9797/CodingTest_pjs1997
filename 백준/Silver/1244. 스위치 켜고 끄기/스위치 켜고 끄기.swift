let n = Int(readLine()!)!
var swi = readLine()!.split(separator: " ").map{Int(String($0))!}
swi.insert(0, at: 0)
let m = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: m)

for i in 0...arr.count-1{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[i][0] = input[0]
    arr[i][1] = input[1]
}

for i in 0...arr.count-1{
    let num = arr[i][1]
    if(arr[i][0] == 1){
        for k in 1...swi.count-1{
            if(k % num == 0){
                if(swi[k] == 0){
                    swi[k] = 1
                }
                else{
                    swi[k] = 0
                }
            }
        }
        
    }
    else{
        if(num < swi.count-1 && num > 1){
            for j in 1...swi.count-1{
                if(num - j >= 1 && num + j <= swi.count-1){
                    if(swi[num-j] == swi[num+j]){
                        if(swi[num-j] == 0){
                            swi[num-j] = 1
                        }
                        else{
                            swi[num-j] = 0
                        }
                        if(swi[num+j] == 0){
                            swi[num+j] = 1
                        }
                        else{
                            swi[num+j] = 0
                        }
                    }
                    else{
                        break
                    }
                }
                
                else{
                    break
                }
            }
            if(swi[num] == 0){
                swi[num] = 1
            }
            else{
                swi[num] = 0
            }
        }
        else{
            if(swi[num] == 0){
                swi[num] = 1
            }
            else{
                swi[num] = 0
            }
        }
        
    }
}

for i in 1...swi.count-1{
    print(swi[i],terminator: " ")
    if(i % 20 == 0){
        print()
    }
}
print()


//25
//0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
//1
//1 1
