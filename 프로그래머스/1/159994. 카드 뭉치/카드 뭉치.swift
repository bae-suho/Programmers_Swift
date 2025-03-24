import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var c1 = cards1
    var c2 = cards2
    for g in goal {
        if let c1First = c1.first, g == c1[0] {
            c1.removeFirst()
        }
        else if let c2First = c2.first, g == c2[0] {
            c2.removeFirst()
        }
        else {
            return "No" 
        }
    }
    return "Yes"
}