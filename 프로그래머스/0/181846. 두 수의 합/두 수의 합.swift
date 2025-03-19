import Foundation

func solution(_ a:String, _ b:String) -> String {
    var arrA = Array(repeating: "0", count: a.count >= b.count ? 0 : b.count - a.count) + Array(a)
    var arrB = Array(repeating: "0", count: b.count >= a.count ? 0 : a.count - b.count) + Array(b)
    var arrSum = Array((0..<arrA.count).map{Int(String(arrA[$0]))! + Int(String(arrB[$0]))!}.reversed())
    for i in 0..<(arrSum.count-1){
        if arrSum[i] >= 10 {
            arrSum[i] %= 10
            arrSum[i+1] += 1
        }
    }
    return arrSum.reversed().map{String($0)}.joined()
}