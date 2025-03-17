import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr.split{ $0 == "a" || $0 == "b" || $0 == "c"}.map{String($0)}
    return !result.isEmpty ? result : ["EMPTY"]
}