import SwiftUI
import SwiftData

struct MemoAddView: View {
    @Environment(\.modelContext) var modelContext

    @Binding var isSheetShowing: Bool
    @State var memoColor: Color = .blue
    @State var memoText: String = ""
    
    let colors: [Color] = [.blue, .cyan, .purple, .yellow, .indigo]

    var body: some View {
        VStack {
            HStack {
                Button("취소") {
                    isSheetShowing = false
                }
                Spacer()
                Button("완료") {
                    addMemo(memoText, color: memoColor)
                    isSheetShowing = false
                }
                .disabled(memoText.isEmpty)
            }
            .padding()
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    Button {
                        memoColor = color
                    } label: {
                        HStack {
                            Spacer()
                            // 컬러 선택시
                            if color == memoColor {
                                Image(systemName: "checkmark.circle")
                            }
                            Spacer()
                        }
                        .frame(height: 50)
                        .background(color)
                        .foregroundStyle(.white)
                        .shadow(radius: color == memoColor ? 8 : 0)
                    }
                }
            }
            .padding()
            
            Divider()
                .padding()
            
            VStack {
                TextField("메모를 입력하세요.", text: $memoText, axis: .vertical)
                    .padding()
                    .foregroundStyle(.white)
                    .background(memoColor)
                    .shadow(radius: 3)
            }
            .padding()
            
            Spacer()
        }
    }
    
    func addMemo(_ text: String, color: Color) {
        let memo = Memo(text: text, color: color, created: Date())
        modelContext.insert(memo)
    }
    

}
#Preview {
    MemoAddView(isSheetShowing: .constant(false))
    
}
