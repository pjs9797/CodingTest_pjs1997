let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var n = input[0]
let m = input[1]

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: m)

var pack = 1000
var each = 1000

for i in 0...m-1{
    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[i][0] = a[0]
    arr[i][1] = a[1]
    if(a[0] < pack){
        pack = a[0]
    }
    if(a[1] < each){
        each = a[1]
    }
}

var ans = 0

if(n >= 6){
    if(each * 6 > pack){
        var a = ((n / 6) + 1) * pack
        var b = (n / 6) * pack + each * (n % 6)
        if(a <= b){
            print(a)
        }
        else{
            print(b)
        }
    }
    else{
        print(each * n)
    }
}
else{
    if(pack < each * n){
        print(pack)
    }
    else{
        print(each * n)
    }
    
}



