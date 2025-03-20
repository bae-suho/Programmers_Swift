import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result = Array<String>()
    for p in picture {
        var upSize = ""
        for c in p {
            upSize += Array(repeating: c, count: k)
        }
        result += Array(repeating: upSize, count: k)
    }
    return result
}