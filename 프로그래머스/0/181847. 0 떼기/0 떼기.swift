import Foundation

func solution(_ n_str:String) -> String {
    let strArr = Array(n_str)
    for i in 0..<strArr.count {
        if strArr[i] != "0" {
            return String(strArr[i...])
        }
    }
    return ""
}