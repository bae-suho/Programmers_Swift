import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var reversedString = Array(myString.reversed())
    let reversedPat = Array(pat.reversed())
    let count = reversedPat.count
    for i in 0...(reversedString.count-count) {
        if Array(reversedString[i..<(i+count)]) == reversedPat {
            print(String(reversedString[i...].reversed()))
            return String(reversedString[i...].reversed())
        }
    }
    
    return ""
}