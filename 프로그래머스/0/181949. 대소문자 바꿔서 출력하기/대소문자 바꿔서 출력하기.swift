import Foundation


let transCase = readLine()!.map {
    !$0.isUppercase ? $0.uppercased() : $0.lowercased()
}.joined()

print(transCase)
 



