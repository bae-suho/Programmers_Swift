import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = stride(from: 0, to: num_list.count, by: 2).map{ num_list[$0]}.reduce(0, +)
    var even = stride(from: 1, to: num_list.count, by: 2).map{ num_list[$0]}.reduce(0, +)
    return odd >= even ? odd : even
}