import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var ret = ""
    for i in 0..<my_strings.count {
        ret += String(Array(my_strings[i])[parts[i][0]...parts[i][1]])
    }
    return ret
}