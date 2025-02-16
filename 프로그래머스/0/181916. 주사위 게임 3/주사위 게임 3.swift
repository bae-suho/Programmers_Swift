import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var diceArray = [a,b,c,d]
    let sorted = diceArray.sorted()
    let diceSet = Set(diceArray)
    var result = 0
    
    switch diceSet.count {
        case 1: result = 1111 * a
        case 2: 
            if sorted[0] == sorted[1] && sorted[2] == sorted[3] {
                result = (sorted[0] + sorted[2]) * (sorted[2] - sorted[0])
            }
            else if sorted[0] == sorted[2] {
                result = (10 * sorted[0] + sorted[3]) * (10 * sorted[0] + sorted[3])
            }
            else {
                   result = (10 * sorted[3] + sorted[0]) * (10 * sorted[3] + sorted[0])
            }
        case 3:
            if sorted[0] == sorted[1] {
                result = sorted[2] * sorted[3]
            }
            else if sorted[1] == sorted[2]{
                result = sorted[0] * sorted[3]
            }
            else {
                result = sorted[0] * sorted[1]
            }
         
        case 4: result = sorted[0]
        default: result = -1
    }
    
    
    return result
}