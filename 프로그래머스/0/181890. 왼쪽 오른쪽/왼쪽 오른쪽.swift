import Foundation

func solution(_ str_list:[String]) -> [String] {
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            if i != 0 {
                return Array(str_list[..<i])
            }
            else {
                return []
            }
        }
        else if str_list[i] == "r" {
            if i != str_list.count-1 {
                return Array(str_list[(i+1)...])
            }
            else {
                return []
            }
        }
    }
    return []
}