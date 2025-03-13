import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return String(my_string.map{ $0 == Character(alp) ? Character($0.uppercased()) : Character($0.lowercased()) })
}