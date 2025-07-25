import Foundation

while let line = readLine(), let n = Int(line){
    let count = Int(pow(3.0, Double(n)))
    var dashes = Array(repeating: "-", count: count)
    func cantor(_ start: Int,_ len: Int) {
        if len == 1 {
            return
        }
        let newLen = len/3
        for i in (start+newLen)..<(start + newLen*2) {
            dashes[i] = " "
        }
        cantor(start, newLen)
        cantor(start + newLen*2, newLen)
    }
    cantor(0, count)
    print(dashes.joined())
}
