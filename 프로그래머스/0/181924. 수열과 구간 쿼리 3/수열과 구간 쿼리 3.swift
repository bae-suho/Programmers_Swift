import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ret = arr
    for q in queries {
        ret.swapAt(q[0], q[1])
    }
    return ret
}