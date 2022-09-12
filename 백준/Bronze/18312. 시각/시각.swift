let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input[0]
let num = input[1]

var cnt = 0
var cc = 0
for i in 0...n{
    for j in 0...59{
        for k in 0...59{
            if(i / 10 == num || i % 10 == num){
                cnt += 1
            }
            else if(j % 10 == num || j / 10 == num){
                cnt += 1
            }
            else if(k % 10 == num || k / 10 == num){
                cnt += 1
            }
        }
    }
}

print(cnt)

