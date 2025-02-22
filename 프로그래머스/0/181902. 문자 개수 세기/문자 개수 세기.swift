import Foundation

func solution(_ my_string:String) -> [Int] {
    var res:[Int] = []
    for i in 0...51{
        res.append(0)
    }
    for c in my_string {
        let ascii = Int(c.asciiValue!)
        if c.isUppercase {
        res[ascii - 65] += 1
        }
        else {
            res[ascii - 71] += 1
        }
    }
    return res
}
