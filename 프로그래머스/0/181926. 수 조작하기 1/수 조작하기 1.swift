import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    let op:[Character: Int] = ["w":1, "s": -1, "d": 10, "a": -10]
    return control.map{op[$0]!}.reduce(n, +)
}
