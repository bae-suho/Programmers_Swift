import Foundation

func solution(_ num_list:[Int]) -> Int {
    func dfs(_ x: Int,_ count: Int) -> Int {
        if x == 1 { return count }
        return dfs( x%2 == 0 ? x/2 : (x-1)/2 , count+1)
    }
    return num_list.map{dfs($0, 0)}.reduce(0, +)
}