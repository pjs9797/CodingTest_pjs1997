let price = Int(readLine()!)!
let N = Int(readLine()!)!
var sum = 0
for i in 1...N{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    sum += input[0] * input[1]
}
if(price == sum){
    print("Yes")
}
else{
    print("No")
}
