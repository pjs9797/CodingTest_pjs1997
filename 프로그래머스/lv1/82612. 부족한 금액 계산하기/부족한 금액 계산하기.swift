import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var ans = 0
    
    for i in 1...count{
        ans += i * price
    }
    
    if(ans <= money){
        return 0
    }
    else{
        return Int64(ans-money)
    }
    
    
}