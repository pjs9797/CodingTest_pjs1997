var ans = [String]()

while(true){
    var str = readLine()!
    if(str == "END"){
        break
    }
    var arr = str.map{String($0)}
    arr.reverse()
    for i in arr{
        print(i,terminator: "")
    }
    print()
    
}
