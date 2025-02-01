import Foundation

func solution(_ numLog:[Int]) -> String {
    let op: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    return (1..<numLog.count).map{ op[numLog[$0] - numLog[$0 - 1]]! }.joined()
}