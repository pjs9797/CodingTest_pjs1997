let money = Int(readLine()!)!

var one = money
var holdOne = 0
var resultOne = 0

var two = money
var holdTwo = 0
var resultTwo = 0

var price = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0...price.count-1{
    if(one >= price[i]){
        var a = (one / price[i])
        holdOne += a
        one = one - a * price[i]
        
    }
}
resultOne = one + holdOne * price[price.count-1]

//print(one , holdOne, resultOne)


for i in 3...price.count-1{
    if(price[i-1] > price[i-2] && price[i-2] > price[i-3]){
        if(holdTwo > 0){
            two += holdTwo * price[i]
            holdTwo = 0
            //print("sell",i+1)
            //print(two, holdTwo, resultTwo)
        }
    }
    if(price[i-3] > price[i-2] && price[i-2] > price[i-1]){
        if(two >= price[i]){
            var a = two / price[i]
            holdTwo += a
            two = two - a * price[i]
            //print("buy",i+1)
            //print(two, holdTwo, resultTwo)
        }
    }
}

resultTwo = two + holdTwo * price[price.count-1]

//print(two, holdTwo, resultTwo)

if(resultOne > resultTwo){
    print("BNP")
}
else if(resultTwo > resultOne){
    print("TIMING")
}
else{
    print("SAMESAME")
}



