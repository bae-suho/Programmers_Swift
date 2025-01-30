import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let result1 = Int(String(a) + String(b))!
    let result2 = Int(String(b) + String(a))!
    
    return result1 >= result2 ? result1 : result2
}