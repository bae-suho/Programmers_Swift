import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let stringArr = Array(my_string)
    return index_list.map{String(stringArr[$0])}.reduce("", +)
}
