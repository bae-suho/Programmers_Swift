import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    var ret = ""
    var codeArr = Array(code)
    for i in 0..<codeArr.count {
        if codeArr[i] == "1" {
            mode = mode == 0 ? 1 : 0 
        }
        else if i % 2 == mode {
            ret.append(codeArr[i])
        }
    }
    return ret != "" ? ret : "EMPTY"
}
