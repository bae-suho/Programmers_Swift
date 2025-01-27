import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = zip(str1, str2).map{String($0) + String($1)}.joined()
    return result
    
}