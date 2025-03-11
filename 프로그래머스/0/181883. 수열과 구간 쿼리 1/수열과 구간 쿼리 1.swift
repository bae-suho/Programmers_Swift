import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for q in queries {
        var (s,e) = (q[0], q[1])
        for i in s...e {
            result[i] += 1
        }
    }
    return result
}