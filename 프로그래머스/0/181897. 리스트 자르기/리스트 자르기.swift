import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    var list:[Int] = []
    var (a,b,c) = (slicer[0], slicer[1], slicer[2])
    switch n {
        case 1:
            for i in 0...b {
                list.append(num_list[i])
            }
        case 2:
            for i in a..<num_list.count {
                list.append(num_list[i])
            }
        case 3:
            for i in a...b {
                list.append(num_list[i])
            }
        case 4:
            for i in stride(from: a, through: b, by: c) {
                list.append(num_list[i])
            }
        default: return list
    }
    return list
}