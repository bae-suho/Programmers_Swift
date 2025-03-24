import Foundation 

func solution(_ n:Int) -> Int {
    var primeNumber = Array(repeating: true , count: n+1)
    primeNumber[0] = false
    primeNumber[1] = false
    for i in 2...n {
        for j in stride(from: i*2, through: n, by: i) {
            primeNumber[j] = false
        }
    }
    
    return primeNumber.filter{$0}.count
}