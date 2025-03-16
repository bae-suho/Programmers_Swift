import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var iArray: [Int] = []
    var jArray: [Int] = []
    for i in 0..<wallpaper.count {
        for j in 0..<wallpaper[i].count {
            if Array(wallpaper[i])[j] == "#" {
                iArray.append(i)
                jArray.append(j)
            }
        }
    }
    return [iArray.min()!, jArray.min()!, iArray.max()!+1, jArray.max()!+1]
}