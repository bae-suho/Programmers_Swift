import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var x:[Int] = []
    for i in 0..<arr.count {
        if flag[i] {
            x += (Array(repeating: arr[i] , count: arr[i] * 2))
        }
        else {
            x.removeLast(arr[i])
        }
    }
    return x
}