import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    var count = 1
    func right(_ x: Int, _ start:Int , _ end: Int) {
        for i in start...end {
            result[x][i] = count
            count += 1
        }
    }
    func left(_ x: Int, _ start:Int , _ end: Int) {
        for i in stride(from: start, through: end, by:-1) {
            result[x][i] = count
            count += 1
        }
    }
    func down(_ y: Int, _ start:Int , _ end: Int) {
        for i in start...end {
            result[i][y] = count
            count += 1
        }
    }
    func up(_ y: Int, _ start:Int , _ end: Int) {
        for i in stride(from: start, through: end, by:-1) {
            result[i][y] = count
            count += 1
        }
    }
    var x = 0, y = n-1
    while true {
        if count == n*n+1 {
            return result
        }
        right(x, x, y)
        if count == n*n+1 {
            return result
        }
        down(y, x+1, y)
        if count == n*n+1 {
            return result
        }
        left(y, y-1, x)
        if count == n*n+1 {
            return result
        }
        up(x, y-1, x+1)
        if count == n*n+1 {
            return result
        }
        x += 1
        y -= 1
    }
    return result
}