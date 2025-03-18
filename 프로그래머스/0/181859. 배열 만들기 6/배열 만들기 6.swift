import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = Array<Int>()
    for i in 0..<arr.count{
        if stk.isEmpty {
            stk += [arr[i]]
        }
        else if stk[stk.count-1] == arr[i] {
            stk.removeLast()
        }
        else {
            stk += [arr[i]]
        }
    }
    return !stk.isEmpty ? stk : [-1]
}