import Foundation

func solution(_ myString:String) -> String {
    return String(myString.map{ $0 == "a" || $0 == "A" ? Character($0.uppercased()) : Character($0.lowercased()) })
}