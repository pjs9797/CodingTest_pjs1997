let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let a = input[0]
let b = input[1]
let c = input[2]
let d = input[3]

var time = 0
var work = 0
var hp = 0

if(a <= d){
    while(time < 24){
        if(hp + a <= d){
            time += 1
            hp += a
            work += b
        }
        else{
            time += 1
            hp -= c
            if(hp < 0){
                hp = 0
            }
        }
        
    }
    print(work)
    
}
else{
    print(0)
}
