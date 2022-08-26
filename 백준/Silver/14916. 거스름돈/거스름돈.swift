var coin = Int(readLine()!)!

var k = coin / 5
var cnt = 0
for i in stride(from: k, through: 0, by: -1){
    cnt = 0
    coin = coin - (5 * i)
    if(coin % 2 == 0){
        cnt += i + (coin / 2)
        break
    }
    coin += 5 * i
}
if(cnt == 0){
    print(-1)
}
else{
    print(cnt)
}
