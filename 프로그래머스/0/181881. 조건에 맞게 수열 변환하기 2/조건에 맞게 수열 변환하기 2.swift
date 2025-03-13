import Foundation

func solution(_ arr:[Int]) -> Int {
    var x = 0
    var arr_x1 = arr
    var arr_x2: [Int] = []
    while x >= 0 {
        arr_x2 = arr_x1.map { $0 >= 50 && $0 % 2 == 0 ? $0 / 2 : $0 < 50 && $0 % 2 == 1 ? ($0 * 2) + 1 : $0 }
        if arr_x1 == arr_x2 {
            return x
        }
        arr_x1 = arr_x2
        x += 1
    }
    return -1
}