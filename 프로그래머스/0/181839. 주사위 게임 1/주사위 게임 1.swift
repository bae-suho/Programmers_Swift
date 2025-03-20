import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let t1 = a%2, t2 = b%2
    return t1 == 1 && t2 == 1 ? (a*a + b*b) : (t1 != t2 ? 2*(a+b) : (a>=b ? a-b : b-a))
}