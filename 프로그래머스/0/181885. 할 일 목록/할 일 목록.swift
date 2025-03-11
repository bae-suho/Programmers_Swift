import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    return (0..<finished.count).filter{!finished[$0]}.map{todo_list[$0]}
}