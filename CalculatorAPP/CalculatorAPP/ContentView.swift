//
//  ContentView.swift
//  CalculatorAPP
//
//  Created by 차지용 on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var number1  = 0 //숫자
    @State var number2 = 0 //숫자
    @State var result = 0
    @State var operators = ""
    
    func CalculatorResult () -> Int{
        switch operators{
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "/":
            result = number1 / number2
        case "*":
            result = number1 * number2
        default :
            result = 0
        }
        return result
    }
    
    var body: some View {
        VStack {
            Text("\(number1) \(operators) \(number2)")
                .font(.largeTitle)
        }
        Spacer()
        Spacer()
        Spacer()
        VStack {
            HStack {
                Button {
                    
                }label: {
                    Text("7")
                        .font(.largeTitle)
                }
                
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
