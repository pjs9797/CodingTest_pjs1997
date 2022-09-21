import Foundation

func solution(_ new_id:String) -> String {
    var str = new_id.lowercased()
    str = str.components(separatedBy: ["~","!","@","#","$","%","^","&","*","(",")","=","+","[","{","]","}",":","?",",","<",">","/"]).joined()
    
    while(str.contains("..")){
        str = str.replacingOccurrences(of: "..", with: ".")
    }
    if(str[str.index(str.startIndex, offsetBy: 0)] == "."){
        str.removeFirst()
    }
    if(str != "" && str[str.index(str.startIndex, offsetBy: str.count-1)] == "."){
        str.removeLast()
    }
    if(str == ""){
        str = "a"
    }
    if(str.count >= 16){
        str = String(str[str.startIndex...str.index(str.startIndex, offsetBy: 14)])
        if(str[str.index(str.startIndex, offsetBy: str.count-1)] == "."){
            str.removeLast()
        }
    }
    if(str.count <= 2){
        while(str.count < 3){
            str += String(str[str.index(str.startIndex, offsetBy: str.count-1)])
        }
    }
    print(str)
    
    return str
}
