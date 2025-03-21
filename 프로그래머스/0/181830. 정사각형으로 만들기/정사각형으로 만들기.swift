import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var result = arr
    if result[0].count > result.count {
        result += Array(repeating: Array(repeating: 0, count: result[0].count), count: result[0].count - result.count)
    }
    else if result.count > result[0].count{
        for i in 0..<result.count {
            result[i] += Array(repeating: 0, count: result.count - result[i].count)
        }
    }
    return result
}