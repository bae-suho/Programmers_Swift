import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let patCount = pat.count
    return Array(myString)[0...myString.count - patCount].enumerated().map{ (index, value) in return String(Array(myString)[index..<(index+patCount)]) 
                                                                          }.filter{$0 == pat}.count
}