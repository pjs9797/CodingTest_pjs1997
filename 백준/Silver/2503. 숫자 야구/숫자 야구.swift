let n = Int(readLine()!)!

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: n)

for i in 0...n-1{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[i][0] = input[0]
    arr[i][1] = input[1]
    arr[i][2] = input[2]
}
var cnt = 0
for i in 1...9{
    for j in 1...9{
        for k in 1...9{
            if(i != j && j != k && i != k){
                var str = i*100 + j*10 + k
                if(check(str)){
                    cnt += 1
                }
            }
        }
    }
}

print(cnt)

func check(_ str:Int) -> Bool{
    for i in 0...n-1{
        var num = arr[i][0]
        var firstStr = str / 100
        var secondStr = (str % 100) / 10
        var thirdStr = (str % 100) % 10
        var firstNum = num / 100
        var secondNum = (num % 100) / 10
        var thirdNum = (num % 100) % 10
        var strike = 0
        var ball = 0
        if(firstStr == firstNum){
            strike += 1
        }
        else{
            if(firstStr == secondNum || firstStr == thirdNum){
                ball += 1
            }
        }
        if(secondStr == secondNum){
            strike += 1
        }
        else{
            if(secondStr == firstNum || secondStr == thirdNum){
                ball += 1
            }
        }
        if(thirdNum == thirdStr){
            strike += 1
        }
        else{
            if(thirdStr == firstNum || thirdStr == secondNum){
                ball += 1
            }
        }
        if(strike == arr[i][1] && ball == arr[i][2]){
            continue
        }
        else{
            return false
        }
    }
    return true
}
