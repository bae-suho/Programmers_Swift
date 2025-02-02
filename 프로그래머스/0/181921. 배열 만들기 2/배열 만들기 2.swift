import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var ret: [Int] = []
    for num in l...r{
        let set = Set(String(num))
        if set == Set(["0", "5"]) || set == Set(["5"]) || set == Set(["0"]) {
            ret.append(num)
        }
    }
    return ret != [] ? ret : [-1]
}