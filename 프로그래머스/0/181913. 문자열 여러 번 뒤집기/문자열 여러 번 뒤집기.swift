import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var ret = my_string
    for q in queries {
        let s = q[0]
        let e = q[1]
        let startIndex = ret.index(ret.startIndex, offsetBy: s)
        let endIndex = ret.index(ret.startIndex, offsetBy: e)
        let range = startIndex...endIndex
        var replace_string = ""
        for i in s...e {
            replace_string += String(ret[ret.index(ret.startIndex, offsetBy: i)])
        }
        replace_string = String(replace_string.reversed())
        ret.replaceSubrange(range, with: replace_string)

    }
    return ret
}