import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var result:[Int] = []
    for i in intervals {
        let (a, b) = (i[0], i[1])
        for j in a...b {
            result.append(arr[j])
        }
    }
    return result
}