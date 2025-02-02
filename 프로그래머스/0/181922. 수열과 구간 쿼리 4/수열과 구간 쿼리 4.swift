import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ret = arr
    for q in queries {
        let (s, e, k) = (q[0], q[1], q[2])
        (s...e).forEach {
            if $0 % k == 0 {
                ret[$0] += 1
            }
        }
    }
    return ret
}