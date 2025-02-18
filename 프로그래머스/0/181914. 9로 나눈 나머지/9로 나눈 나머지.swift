import Foundation

func solution(_ number:String) -> Int {
    let arr = Array(number)
    var sum = 0
    for i in arr {
        sum += Int(String(i))!
    }
    return sum % 9
}
