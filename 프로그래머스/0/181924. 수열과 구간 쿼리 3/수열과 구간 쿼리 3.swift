import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ret = arr
    for q in queries {
        var temp = ret[q[0]]
        ret[q[0]] = ret[q[1]]
        ret[q[1]] = temp
    }
    return ret
}