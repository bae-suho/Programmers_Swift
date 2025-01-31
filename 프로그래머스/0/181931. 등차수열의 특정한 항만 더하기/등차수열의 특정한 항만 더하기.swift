import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var count = 0
    var ret = 0
    for i in included {
        if i {
            ret += a + d * count 
        }
        count += 1
    }   
    return ret
}