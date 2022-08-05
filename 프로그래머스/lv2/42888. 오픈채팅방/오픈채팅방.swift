import Foundation

var a = ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]

func solution(_ record:[String]) -> [String] {
    var ans:[String] = []
    var dic:[String:String] = [:]
    for i in 0...record.count-1{
        var arr = record[i].components(separatedBy: " ")
        if(arr[0] == "Enter"){
            dic[arr[1]] = arr[2]
        }
        else if(arr[0] == "Leave"){
            
        }
        else{
            dic[arr[1]] = arr[2]
        }
    }
    
    for i in 0...record.count-1{
        var arr = record[i].components(separatedBy: " ")
        var aa = ""
        if(arr[0] == "Enter"){
            aa += dic[arr[1]]! + "님이 들어왔습니다."
            ans.append(aa)
        }
        else if(arr[0] == "Leave"){
            aa += dic[arr[1]]! + "님이 나갔습니다."
            ans.append(aa)
        }
        
    }
    return ans
}

