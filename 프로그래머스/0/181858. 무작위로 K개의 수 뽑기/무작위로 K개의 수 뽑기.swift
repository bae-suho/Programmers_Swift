import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result = Array<Int>()
    for i in arr {
        if k == result.count {
            return result
        }
        else if !result.contains(i) {
           result += [i] 
        }
    }
    return k > result.count ? result + Array(repeating: -1, count: k-result.count) : result
}