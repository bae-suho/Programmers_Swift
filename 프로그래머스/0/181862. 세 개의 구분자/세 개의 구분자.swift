import Foundation

func solution(_ myStr:String) -> [String] {
    var result:[String] = []
    var char = ""
    for c in myStr {
        if c == "a" || c == "b" || c == "c" {
            result.append(char)
            char = ""
        }
        else {
            char.append(c)
        }
    }
    result.append(char)
    result = result.filter{$0 != ""}
    return !result.isEmpty ? result : ["EMPTY"]
}