import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var ret = num_list
    let last = ret[ret.count - 1]
    let last2 = ret[ret.count - 2]
    ret.append(last > last2 ? last - last2 : last * 2)
    return ret
}