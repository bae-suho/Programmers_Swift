import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = Array<Int>()
    for i in 0..<arr.count{
        if stk.isEmpty || stk.last != arr[i] {
            stk += [arr[i]]
        }
        else {
            stk.removeLast()
        }
    }
    return !stk.isEmpty ? stk : [-1]
}