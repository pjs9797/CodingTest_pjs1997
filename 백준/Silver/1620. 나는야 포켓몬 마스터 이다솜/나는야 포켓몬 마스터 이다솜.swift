let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr:[String] = Array(repeating: "", count: input[0])
var dic = [String:Int]()
for i in 0...input[0]-1{
    arr[i] = readLine()!
    dic[arr[i]] = i+1
}
var question:[String] = Array(repeating: "", count: input[1])
for i in 0...input[1]-1{
    question[i] = readLine()!
}
for i in 0...question.count-1{
    let a = Int(question[i]) ?? 0
    if(a == 0){
        print(dic[question[i]]!)
    }
    else{
        print(arr[a-1])
    }
}
