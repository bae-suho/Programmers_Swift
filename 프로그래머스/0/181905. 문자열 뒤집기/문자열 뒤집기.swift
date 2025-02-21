import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var ret = Array(my_string)
    let replace_reversed_string = (Array(my_string)[s...e].reversed())
    ret.replaceSubrange(s...e, with: replace_reversed_string)
    return String(ret)
}