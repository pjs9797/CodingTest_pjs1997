import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var ans = 0
    var skill = skill.map{String($0)}
    for str in skill_trees{
        var check = 0
        var a = 0
        Loop:for i in str{
            for j in 0...skill.count-1{
                if(String(i) == skill[j]){
                    //print(str,i,j,check)
                    if(j == check){
                        check += 1
                    }
                    else{
                        a = 1
                        break Loop
                    }
                }
            }
        }
        if(a != 1 && check <= skill.count){
            //print(str)
            ans += 1
        }
    }
    return ans
}