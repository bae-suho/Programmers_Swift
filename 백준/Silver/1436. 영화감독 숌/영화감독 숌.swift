import Foundation

let input = Int(readLine()!)!

var count = 0
var num = 666

while true {
    var t = num
    while t >= 666 {
        if t % 1000 == 666 {
            count += 1
            break
        }
        t /= 10
    }
    if count == input {
        print(num)
        break
    }
    num += 1
}