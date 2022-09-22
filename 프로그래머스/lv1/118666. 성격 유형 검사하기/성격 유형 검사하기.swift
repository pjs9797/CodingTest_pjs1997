import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dic:[Character:Int] = ["R":0,"T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0]
    var ans = ""
    for i in 0...survey.count-1{
        let point = choices[i]
        let first = survey[i].first!
        let last = survey[i].last!
        if(point <= 3){
            dic[first]! += 4 - point
        }
        else if(point == 4){
            
        }
        else{
            dic[last]! += point - 4
        }
    }
    if(dic["R"]! >= dic["T"]!){
        ans += "R"
    }
    else{
        ans += "T"
    }
    if(dic["C"]! >= dic["F"]!){
        ans += "C"
    }
    else{
        ans += "F"
    }
    if(dic["J"]! >= dic["M"]!){
        ans += "J"
    }
    else{
        ans += "M"
    }
    if(dic["A"]! >= dic["N"]!){
        ans += "A"
    }
    else{
        ans += "N"
    }
    return ans
}
