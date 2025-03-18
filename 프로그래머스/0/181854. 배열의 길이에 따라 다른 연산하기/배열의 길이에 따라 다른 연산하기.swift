import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return (0..<arr.count).map{arr[$0] + (arr.count % 2 != $0 % 2 ? n : 0)}
}