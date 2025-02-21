import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    let count = my_string.count-is_suffix.count
    if count < 0 {
        return 0
    }
    return String(Array(my_string)[count...]) == is_suffix ? 1: 0
}
