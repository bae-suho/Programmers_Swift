import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var result = 0
    for i in 0..<numbers.count {
        if result > n {
            return result
        }
        result += numbers[i]
    }
    return result 
}