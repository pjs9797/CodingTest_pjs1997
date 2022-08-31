let jaum:Set<String> = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
let moum:Set<String> = ["a","e","i","o","u"]

while(true){
    let input = readLine()!
    if(input == "end"){
        break
    }
    var a = 0
    let str = input.map{String($0)}
    if(checkfirst(str)){
        if(str.count >= 3){
            for i in 2...str.count-1{
                if(checksecond(str, i)){
                    if(i == 2){
                        if(str[0] == str[1]){
                            if(str[0] == "e" || str[1] == "o"){
//                                print("<"+input+">"+" is acceptable.")
                                
                            }
                            else{
                                a = 1
                                print("<"+input+">"+" is not acceptable.")
                                break
                            }
                        }
//                        else{
//                            print("<"+input+">"+" is acceptable.")
//                        }
                        if(checkthird(str,i)){
                            continue
                        }
                        else{
                            a = 1
                            print("<"+input+">"+" is not acceptable.")
                            break
                        }
                    }
                    else{
                        if(checkthird(str,i)){
                            continue
                        }
                        else{
                            a = 1
                            print("<"+input+">"+" is not acceptable.")
                            break
                        }
                    }
                }
                else{
                    a = 1
                    print("<"+input+">"+" is not acceptable.")
                    break
                }
                
            }
            if(a == 0){
                print("<"+input+">"+" is acceptable.")
            }
        }
        else if(str.count == 2){
            if(str[0] == str[1]){
                if(str[0] == "e" || str[1] == "o"){
                    print("<"+input+">"+" is acceptable.")
                }
                else{
                    print("<"+input+">"+" is not acceptable.")
                    break
                }
            }
            else{
                print("<"+input+">"+" is acceptable.")
            }
        }
        else{
            print("<"+input+">"+" is acceptable.")
        }
    }
    else{
        print("<"+input+">"+" is not acceptable.")
    }
    
    
}

func checkfirst(_ arr:[String]) -> Bool{
    if(arr.contains("a") || arr.contains("e") || arr.contains("i") || arr.contains("o") || arr.contains("u")){
        return true
    }
    else{
        return false
    }
}

func checksecond(_ arr:[String],_ i:Int) -> Bool{
    if(moum.contains(arr[i-2]) && moum.contains(arr[i-1]) && moum.contains(arr[i])){
        return false
    }
    else if(jaum.contains(arr[i-2]) && jaum.contains(arr[i-1]) && jaum.contains(arr[i])){
        return false
    }
    else{
        return true
    }
}

func checkthird(_ str:[String],_ i:Int) -> Bool{
    if(str[i-1] == str[i]){
        if(str[i-1] == "e" || str[i] == "o"){
            return true
        }
        else{
            return false
        }
    }
    else{
        return true
    }
}
