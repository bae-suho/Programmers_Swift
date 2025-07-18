import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var graph = [String: [String]]()
    // 그래프 생성
    for ticket in tickets {
        let from = ticket[0]
        let to = ticket[1]
        graph[from, default: []].append(to) 
    }
    
    for key in graph.keys {
        graph[key]?.sort(by: >)
    }
    
    var route = [String]()
    var stack = ["ICN"]
    
    while !stack.isEmpty {
        guard let current = stack.last else {break}
        
        if var destinations = graph[current], !destinations.isEmpty {
            let nextCity = destinations.popLast()!
            graph[current] = destinations
            stack.append(nextCity)
        }
        else {
            route.append(stack.popLast()!)
        }
    }
    
    return route.reversed()
}

