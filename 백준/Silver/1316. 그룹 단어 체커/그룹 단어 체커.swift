let n = Int(readLine()!)!
var ans = 0

for _ in 1...n{
    var arr: [Bool] = Array(repeating: false, count: 26)
    let input = readLine()!.map{String($0)}
    var start = input[0]
    var check = 0
    if(input.count != 1){
        for i in 1...input.count-1{
            let index = Int(UnicodeScalar(input[i])!.value) - Int(UnicodeScalar("a").value)
            if(input[i-1] == input[i]){
                arr[index] = true
            }
            else{
                
                if(arr[index]){
                    check = 1
                }
                else{
                    let index2 = Int(UnicodeScalar(input[i-1])!.value) - Int(UnicodeScalar("a").value)
                    arr[index2] = true
                    arr[index] = true
                }
            }
        }
    }
    if(check == 0){
        ans += 1
    }
}
print(ans)
