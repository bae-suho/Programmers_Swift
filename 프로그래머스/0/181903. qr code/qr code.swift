import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    return String((0..<code.count).filter{$0 % q == r}.map{Array(code)[$0]})
}