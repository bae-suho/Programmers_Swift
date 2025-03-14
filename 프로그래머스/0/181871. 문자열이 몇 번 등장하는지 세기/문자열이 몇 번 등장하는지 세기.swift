import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return (0...myString.count - pat.count).filter{String(Array(myString)[$0..<($0 + pat.count)]) == pat}.count
}