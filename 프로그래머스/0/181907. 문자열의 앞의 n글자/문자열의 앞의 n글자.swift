import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(Array(my_string)[0...n-1])
}