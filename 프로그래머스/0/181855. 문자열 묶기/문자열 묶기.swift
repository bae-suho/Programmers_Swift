import Foundation

func solution(_ strArr:[String]) -> Int {
    var dict: [Int: Int] = [:]
    for s in strArr {
        dict.updateValue(dict.keys.contains(s.count) ? dict[s.count]! + 1 : 1, forKey: s.count)
    }
    return dict.values.sorted{$0 > $1}[0]
}