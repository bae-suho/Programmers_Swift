import Foundation

// func solution(_ my_string:String) -> [String] {
//     var ret:[String] = []
//     for i in 0..<my_string.count{
//         ret.append(String(Array(my_string)[i...]))
//     }
//     return ret.sorted()
// }

 func solution(_ my_string:String) -> [String] {
    return (0..<my_string.count).map{ String(Array(my_string)[$0...]) }.sorted()
}