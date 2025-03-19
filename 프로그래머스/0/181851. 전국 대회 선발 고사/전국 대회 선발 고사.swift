import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let top3 = (0..<rank.count).filter{attendance[$0]}.sorted(){rank[$0] < rank[$1]}[..<3].map{$0}
    return top3[0] * 10000 + top3[1] * 100 + top3[2]
}