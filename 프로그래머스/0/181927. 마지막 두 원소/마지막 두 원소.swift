import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var ret = num_list
    let last = ret[ret.count - 1] - ret[ret.count - 2]
    last > 0 ? ret.append(last) : ret.append(ret[ret.count - 1] * 2)
    return ret
}