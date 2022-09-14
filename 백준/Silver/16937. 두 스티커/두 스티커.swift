let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let h = input[0]
let w = input[1]

let n = Int(readLine()!)!

var arr:[(Int,Int)] = Array(repeating: (0,0), count: n)

var m = 0

for i in 0...n-1{
    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[i] = (input2[0],input2[1])
}
if(n == 1){
    
    print(m)
}

else{
    for i in 0...n-2{
        for j in i+1...n-1{
            let a1 = arr[i].0
            let a2 = arr[i].1
            let b1 = arr[j].0
            let b2 = arr[j].1
            if(a1 + b1 <= h && a2 <= w && b2 <= w){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a1 + b2 <= h && a2 <= w && b1 <= w){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a2 + b1 <= h && a1 <= w && b2 <= w){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a2 + b2 <= h && a1 <= w && b1 <= w){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a1 + b1 <= w && a2 <= h && b2 <= h){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a1 + b2 <= w && a2 <= h && b1 <= h){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a2 + b1 <= w && a1 <= h && b2 <= h){
                m = max(m, a1 * a2 + b1 * b2)
            }
            else if(a2 + b2 <= w && a1 <= h && b1 <= h){
                m = max(m, a1 * a2 + b1 * b2)
            }
            
        }
    }
    print(m)
}

