import Foundation

func solution(_ num_list:[Int]) -> Int {
    let multiples = num_list.reduce(1, *)
    let sumSquare = Int(pow(Double(num_list.reduce(0, +)),2))
    return multiples < sumSquare ? 1 : 0
}