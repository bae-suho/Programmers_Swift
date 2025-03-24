import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var c1 = cards1
    var c2 = cards2
    for g in goal {
        if g == c1.first {
            c1.removeFirst()
        }
        else if g == c2.first {
            c2.removeFirst()
        }
        else {
            return "No" 
        }
    }
    return "Yes"
}