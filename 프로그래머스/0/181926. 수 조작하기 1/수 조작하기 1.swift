import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var ret = n
    for c in control {
          switch c {
            case "w": ret += 1 
            case "s": ret += -1
            case "d": ret += 10
            case "a": ret += -10
            default: 0
        }
    } 
    
    return ret
}