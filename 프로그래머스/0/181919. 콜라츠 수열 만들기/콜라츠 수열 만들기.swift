import Foundation

func solution(_ n:Int) -> [Int] {
    var ret: [Int] = [n]
    while ret.last! > 1 {
        let last = ret.last!
        ret.append(last % 2 == 0 ? last/2 : last*3+1)
    }
    return ret
}