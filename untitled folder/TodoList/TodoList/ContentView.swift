//
//  ContentView.swift
//  TodoList
//
//  Created by SungWoonLee on 4/25/24.
//

import SwiftUI
import SwiftData

struct TaskRowView : View {
    @Binding var completed: Bool
    var task : Task

    
    var body: some View {
        HStack {

            Text("\(task.priority.icon)")
            Text(task.title)
            Spacer()
            
            Button(action: {
                task.completed.toggle()
            }) { Image (systemName: completed ? "checkmark.square.fill" : "square")}
            
//            Toggle("", isOn: Task.task.$completed)
//                .padding(0)
//                .labelsHidden()


        }
    }
}


struct ContentView: View {

    var body: some View {
        NavigationView  {
            List(Task.tasks) { index in
                TaskRowView(completed: <#Binding<Bool>#>, task: index)
                
            }.navigationTitle("Todo List")
        }
    }
}


#Preview {
    ContentView()
}
