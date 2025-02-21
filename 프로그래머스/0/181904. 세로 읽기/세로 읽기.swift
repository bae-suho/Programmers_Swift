import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    return String((0..<my_string.count).filter{ $0 % m == c-1 }.map{Array(my_string)[$0]})
}