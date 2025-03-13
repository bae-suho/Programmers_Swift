import Foundation

func solution(_ myString:String) -> String {
    return String(myString.map{ $0 == "a" || $0 == "A" ? $0.uppercased().first! : $0.lowercased().first! })
}