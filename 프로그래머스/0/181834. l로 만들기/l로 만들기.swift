import Foundation

func solution(_ myString:String) -> String {
    let dict:[String] = ["a","b","c","d","e","f","g","h","i","j","k","l"]
    return myString.map{String(dict.contains(String($0)) ? "l" : $0)}.joined()
}