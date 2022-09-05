while let input = readLine(){
    let str = input.split(separator: " ").map{String($0)}
    let a = str[0]
    let b = str[1]
    var check = 0
    for i in b{
        let aindex = a.index(a.startIndex, offsetBy: check)
        if(a[aindex] == i){
            check += 1
        }
        if(check == a.count){
            break
        }
        
    }
    
    
    
    if(check == a.count){
        print("Yes")
    }
    else{
        print("No")
    }
   
    
    
}
