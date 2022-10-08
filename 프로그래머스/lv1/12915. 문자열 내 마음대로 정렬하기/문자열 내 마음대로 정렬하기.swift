func solution(_ strings:[String], _ n:Int) -> [String] {
    var arr = strings.sorted(by: {
        var index1 = $0.index($0.startIndex, offsetBy: n)
        var index2 = $1.index($1.startIndex, offsetBy: n)
        
        if($0[index1] == $1[index2]){
            
            return $0 < $1
        }
        
        return $0[index1] < $1[index2]
    })
    return arr
}