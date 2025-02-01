import Foundation

func solution(_ numLog:[Int]) -> String {
    let op: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    var prev = numLog[0]
    var ret = ""
    for i in 1..<numLog.count {
        ret.append(op[numLog[i] - prev]!)
        prev = numLog[i]
    }
    return ret
}