//
//  Task.swift
//  TodoList
//
//  Created by Edgar Nzokwe on 8/15/21.
//

import SwiftData
import SwiftUI

enum Priority: Comparable {
    case high
    case medium
    case low
    
    var icon: Image {
        switch self {
        case .low: return Image(systemName: "lightbulb.slash")
        case .high: return Image(systemName: "lightbulb.fill")
        case .medium: return Image(systemName: "lightbulb")
        }
    }
}


@Model
struct Task: Identifiable {
    var id = UUID()
    var completed: Bool
    var title: String
    var priority: Priority

    init(id: UUID = UUID(), completed: Bool, title: String, priority: Priority) {
        self.id = id
        self.completed = completed
        self.title = title
        self.priority = priority
    }
    
    }


extension Task {
    static var tasks = [
        Task(completed: false, title: "Wake up", priority: .low ),
        Task(completed: false, title: "Shower", priority: .medium),
        Task(completed: false, title: "Code", priority: .high),
        Task(completed: false, title: "Eat", priority: .high ),
        Task(completed: false, title: "Sleep", priority: .high),
        Task(completed: false, title: "Get groceries", priority: .high)
    ]
    static var task = tasks[0]
}
