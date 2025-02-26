import Foundation

func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var result = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            result = Array(result[...query[i]]) // query[i] 이후 버림
        } else {
            result = Array(result[query[i]...]) // query[i] 이전 버림
        }
    }
    
    return result
}

