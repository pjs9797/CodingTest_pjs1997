var aa = readLine()!.map{String($0)}

var ans = readLine()!.map{String($0)}

var str = [String]()
var check:Set<String> = ["0","1","2","3","4","5","6","7","8","9"]

for i in 0...aa.count-1{
    if(!check.contains(aa[i])){
        str.append(aa[i])
    }
}
var z = ""
var a = ""
for i in 0...ans.count-1{
    a += ans[i]
}
for i in 0...str.count-1{
    z = ""
    if(str[i] == ans[0]){
        if(i + ans.count-1 <= str.count-1){
            for j in i...i + ans.count-1{
                z += str[j]
                
            }
            if(z == a){
                break
            }
        }
    }
}

if(z == a){
    print(1)
}
else{
    print(0)
}
