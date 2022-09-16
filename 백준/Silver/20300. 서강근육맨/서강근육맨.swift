let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}



arr.sort(by: {$0 < $1})

var ans = 0

if(arr.count % 2 == 0){
    let a = n/2
    var b = 0
    for i in 0...a-1{
        ans = arr[i] + arr[arr.count-1-i]
        if(ans > b){
            b = ans
        }
    }
    print(b)
}
else{
    var b = arr[arr.count-1]
    let a = (n-1)/2
    for i in 0...a-1{
        ans = arr[i] + arr[arr.count-2-i]
        if(ans > b){
            b = ans
        }
    }
    
    print(b)
}



