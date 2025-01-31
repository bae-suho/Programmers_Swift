import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var ret = num_list
    let last = ret[ret.count - 1]
    let prevLast = ret[ret.count - 2]
    ret.append(last > prevLast ? last - prevLast : last * 2)
    return ret
}