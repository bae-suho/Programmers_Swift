import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    for i in 0..<date1.count{
        if date1[i]<date2[i] {
            return 1
        }
        else if date1[i]>date2[i]{
            return 0
        }
    }
    return 0
}