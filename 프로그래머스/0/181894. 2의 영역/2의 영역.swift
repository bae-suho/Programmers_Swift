import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if let s = arr.firstIndex(of: 2), let e = arr.lastIndex(of: 2) {
        return Array(arr[s...e])
    }
    return [-1]
}
