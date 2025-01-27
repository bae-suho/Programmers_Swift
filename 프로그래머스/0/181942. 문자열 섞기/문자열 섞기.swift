import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    let str1_arr = Array(str1)
    let str2_arr = Array(str2)
    for i in 0..<str1_arr.count { 
        result += String(str1_arr[i]) + String(str2_arr[i])
    }
    return result
}