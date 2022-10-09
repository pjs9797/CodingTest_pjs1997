import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var ans = [Int]()
    var f_yellow = Float(yellow)
    for i in 1...Int(sqrt(f_yellow)){
        if(yellow % i == 0){
            var x = yellow / i
            var y = i
            if((x+2)*2 + 2*y == brown){
                ans.append(x+2)
                ans.append(y+2)
                break
            }
        }
    }
    return ans
}