import Foundation

func solution(_ my_string:String) -> [Int] {
    var res:[Int] = Array(repeating: 0, count: 52)
    for c in my_string {
        res[Int(c.asciiValue!) - (c.isUppercase ? 65 : 71)] += 1
    }
    return res
}
