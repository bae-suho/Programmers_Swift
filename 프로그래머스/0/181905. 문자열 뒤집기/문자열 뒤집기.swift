import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var ret = my_string
    let range = my_string.index(my_string.startIndex, offsetBy: s)...my_string.index(my_string.startIndex, offsetBy: e)
    let replace_reversed_string = String(Array(my_string)[s...e].reversed())
    ret.replaceSubrange(range, with: replace_reversed_string)
    return ret
}