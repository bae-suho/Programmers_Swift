import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result: [Int] = []
    for q in queries {
        var overGroup: [Int] = []
        for i in q[0]...q[1] {
            if arr[i] > q[2] {
                overGroup.append(arr[i])
            }
        }
        
        result.append(overGroup.min() ?? -1)
    }
    return result
}