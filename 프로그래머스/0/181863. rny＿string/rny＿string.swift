import Foundation

func solution(_ rny_string:String) -> String {
    return rny_string.map{String($0) == "m" ? "rn" : String($0)}.joined()
}