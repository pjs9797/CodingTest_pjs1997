import Foundation

//let qwe = [180, 5000, 10, 600]
//let asd = ["05:34 5961 IN", "06:34 5961 OUT", "07:34 5961 IN", "08:34 5961 OUT", "09:34 5961 IN", "10:34 5961 OUT", "11:34 5961 IN", "12:34 5961 OUT"]

//let qwe = [180, 5000, 10, 600]
//let asd = ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]

//print(solution(qwe,asd))

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let a = fees[0]
    let b = fees[1]
    let c = fees[2]
    let d = fees[3]
    var dic = [String:[[String]]]()
    var ans = [String:Int]()
    var arr = [Int]()
    
    for i in records{
        var input = i.split(separator: " ").map{String($0)}
        var time = input[0]
        var who = input[1]
        var outin = input[2]
        if dic[who] != nil {
            dic[who]!.append([time,outin])
        }
        else{
            dic[who] = [[time,outin]]
        }
    }
    for a in dic{
        let who = a.key
        let ex = a.value
        var time = 0
        var start = 0
        var end = 0
        for i in 0...ex.count-1{
            if(ex[i][1] == "IN"){
                start = trans(ex[i][0])
            }
            else{
                time += trans(ex[i][0]) - start
                start = 0
            }
            if(i == ex.count-1){
                if(ex[i][1] == "IN"){
                    time += trans("23:59") - start
                }
            }
        }
        
        ans[who] = time
    }
    var realAns = ans.sorted(by: {Int($0.key)! < Int($1.key)!})
    
    for i in realAns{
        var price = 0
        var time = i.value
        if(time <= a){
            price += b
        }
        else{
            price += b
            var z = (time - a) / c
            
            if(c == 1){
                z = (time - a) / c
            }
            else{
                if((time - a) % c != 0){
                    z += 1
                }
            }
            price += z * d
            //print(time,a,b,c,d)
        }
        arr.append(price)
    }
    return arr
}

func trans(_ time:String) -> Int{
    var str = time.split(separator: ":").map{String($0)}
    let hour = Int(str[0])!
    let minute = Int(str[1])!
    
    return hour*60 + minute
}

