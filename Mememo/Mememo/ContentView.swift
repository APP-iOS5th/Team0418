//
//  ContentView.swift
//  Mememo
//
//  Created by 차지용 on 4/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var isSheetShowing: Bool = false
    @Environment(\.modelContext) var modelContext
    @Query var memos: [Memo]
    
    var body: some View {
        NavigationStack {
            List(memos) { memo in
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(memo.text)").font(.title)
                        Text("\(memo.createdString)").font(.body).padding(.top)
                    }
                    Spacer()
                }
                .padding()
                .foregroundColor(.white)
                .background(memo.color)
                .shadow(radius: 3)
                .padding()
                .contextMenu {
                    ShareLink(item: memo.text) //공유 기능
                    Button {
                        modelContext.delete(memo)
                    } label: {
                        Image(systemName: "trash")
                        Text("삭제")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("mememo")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("추가") {
                        isSheetShowing = true
                    }
                }
            }
            .sheet(isPresented: $isSheetShowing) {
                MemoAddView(isSheetShowing: $isSheetShowing)
            }
        }
    }
}




#Preview {
    ContentView()
        .modelContainer(for: Memo.self, inMemory: true)
}
