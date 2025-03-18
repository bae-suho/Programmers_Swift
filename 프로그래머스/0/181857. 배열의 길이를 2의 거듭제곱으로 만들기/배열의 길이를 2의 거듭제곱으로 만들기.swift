import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var len = 1
    while len < arr.count {
        len *= 2
    }
    return arr + Array(repeating: 0, count: len-arr.count) 
}