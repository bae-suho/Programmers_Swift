import Foundation

func solution(_ myString:String) -> [Int] {
    let str = Array(myString)
    var result:[Int] = []
    var count = 0
    for i in 0..<str.count { 
        if str[i] == "x" {
            result.append(count)
            count = 0
        }
        else {
            count += 1
        }
    }
    result.append(count)
    return result
}