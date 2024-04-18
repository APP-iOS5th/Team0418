//
//  ContentView.swift
//  Calculator_ios5_heeji
//
//  Created by Heeji Jung on 4/18/24.
//

import SwiftUI

enum EBtntype: String {
       case one = "1"
       case two = "2"
       case three = "3"
       case four = "4"
       case five = "5"
       case six = "6"
       case seven = "7"
       case eight = "8"
       case nine = "9"
       case zero = "0"
       case clear = "AC"
       case opposite = "+/-"
       case percent = "%"
       case decimal = "."
       case plus = "+"
       case minus = "-"
       case multiply = "x"
       case devide = "÷"
       case equal = "="
    
    //버튼 색깔
    var backgrColor : Color{
        switch self{
        case  .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .decimal:
            return Color("NumBtn")
        case .equal, .plus, .minus,.multiply:
            return Color.orange
        default:
            return Color(.gray)
        }
    }
    //폰트색깔
    var foregrColor: Color{
        switch self{
        case .percent,.opposite, .clear, .devide:
            return Color.black
        default:
            return Color(.white)
            }
        }
}


struct ContentView: View {
    @State private var vTotalNumber: String = "0"
    @State var vtempnum :Int  = 0
    @State var vOpperatorType : EBtntype = .clear
    
    private let BtnData: [[EBtntype]] = [
        [.clear,.opposite,.percent, .devide],
        [.seven,.eight,.nine,.multiply ],
        [.four,.five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .decimal,.equal ]
    ]
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                /*계산 결과값*/
                HStack{
                    Spacer()
                    Text(vTotalNumber)
                        .padding()
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                VStack{
                    ForEach(BtnData,id: \.self) {rows in
                        HStack{
                            ForEach(rows, id:\.self) {btns in
                                Button(action:{
                                    self.BtnClick_Input(btns)
                                }){
                                    Text(btns.rawValue)
                                        .frame(width: btns ==
                                            .some(.zero) ? 165 : 80, height: 80)
                                        .background(btns.backgrColor)
                                        .cornerRadius(40)
                                        .foregroundColor(btns.foregrColor)
                                        .font(.system(size: btns ==
                                            .some(.devide) ? 45 : 33))
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    
    //버튼 클릭 시 입력되는 함수
    func BtnClick_Input(_ btns: EBtntype)
    {
        //2024.04.18 사칙연산 미완성
        let lClicNum  = btns.rawValue
        
        switch btns{
        case .clear:
            vTotalNumber = "0"
        case .plus: //더하기
            //숫자 저장 ->더하기-> 초기화
            vtempnum = Int(vTotalNumber) ?? 0
            vOpperatorType = .plus
            vTotalNumber = "0"
        case .minus:
            //숫자 저장 ->빼기-> 초기화
            vtempnum = Int(vTotalNumber) ?? 0
            vOpperatorType = .minus
            vTotalNumber = "0"
        case .multiply:
            //숫자 저장 ->곱하기-> 초기화
            vtempnum = Int(vTotalNumber) ?? 0
            vOpperatorType = .multiply
            vTotalNumber = "0"
        case .devide:
            //숫자 저장 ->나누기-> 초기화
            vtempnum = Int(vTotalNumber) ?? 0
            vOpperatorType = .devide
            vTotalNumber = "0"
        case .equal:
            if(vOpperatorType == .plus)
            {
                vTotalNumber = String((Int(vTotalNumber) ?? 0) + vtempnum)
            }
            else if(vOpperatorType == .minus)
            {
                vTotalNumber = String(vtempnum - (Int(vTotalNumber) ?? 0))
            }
            else if(vOpperatorType == .multiply)
            {
                vTotalNumber = String((Int(vTotalNumber) ?? 0) * vtempnum)
            }
            else if(vOpperatorType == .devide)
            {
                vTotalNumber = String((Int(vTotalNumber) ?? 0) / vtempnum)
            }
            
        default: //번호 입력
            let lClicNum  = btns.rawValue
            
            if(lClicNum == "0")
            {
                vTotalNumber = lClicNum
            }
            else
            {
                vTotalNumber += lClicNum
            }
        }
    }

}

#Preview {
    ContentView()
}
