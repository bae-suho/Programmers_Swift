import Foundation

func solution(_ binomial:String) -> Int {
    let components:[String] = binomial.split{$0 == " "}.map{String($0)}
    let (a, op, b) = (Int(components[0])!, components[1], Int(components[2])!)
    switch op {
        case "+": return a + b
        break
        case "-": return a - b
        break
        case "*": return a * b
        break
        default : return -1
    }
}