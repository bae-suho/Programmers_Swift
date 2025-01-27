import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var result = Array(my_string)
    let overwrite = Array(overwrite_string)
    
    for i in 0..<overwrite_string.count {
        result[i+s] = overwrite[i]
    }
    return String(result)
}