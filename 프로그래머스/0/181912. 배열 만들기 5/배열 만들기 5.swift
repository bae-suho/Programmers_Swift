import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.map{ Int($0[$0.index($0.startIndex, offsetBy: s)...$0.index($0.startIndex, offsetBy: s+l-1)])! }.filter{ $0 > k}

}