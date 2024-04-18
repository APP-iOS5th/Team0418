//
//  ContentView.swift
//  CalculatorAPP
//
//  Created by 차지용 on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2 = 0
    @State var result = 0
    @State var operators = ""
    
    func CalculatorResult() {
        switch operators{
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "/":
            result = number1/number2
        case "*":
            result = number1 * number2
        default :
            result = 0
        }
        result = result
    }
    
    
    func rest() {
        number1 = 0
        number2 = 0
        operators = ""
        result = 0
    }

    
    var body: some View {
        VStack {
            Text("\(number1) \(operators) \(number2) = \(result)")
                .font(.largeTitle)
            
        }
        Spacer()
        Spacer()
        Spacer()
        VStack {
            HStack {
                Button() {
                    if operators.isEmpty {
                        number1 = 7
                    }
                    else {
                        number2 = 7
                    }
                }label: {
                    Text("7")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 8
                    }
                    else {
                        number2 = 8
                    }
                }label: {
                    Text("8")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 9
                    }
                    else {
                        number2 = 9
                    }
                }label: {
                    Text("9")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        operators = "/"
                    }
                }label: {
                    Text("/")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    if operators.isEmpty {
                        number1 = 4
                    }
                    else {
                        number2 = 4
                    }
                }label: {
                    Text("4")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 5
                    }
                    else {
                        number2 = 5
                    }
                }label: {
                    Text("5")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 6
                    }
                    else {
                        number2 = 6
                    }
                }label: {
                    Text("6")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        operators = "*"
                    }
                }label: {
                    Text("*")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    if operators.isEmpty {
                        number1 = 1
                    }
                    else {
                        number2 = 1
                    }
                }label: {
                    Text("1")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 2
                    }
                    else {
                        number2 = 2
                    }
                }label: {
                    Text("2")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 3
                    }
                    else {
                        number2 = 3
                    }
                }label: {
                    Text("3")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        operators = "-"
                    }
                }label: {
                    Text("-")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    
                }label: {
                    Text(".")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        number1 = 0
                    }
                    else {
                        number2 = 0
                    }
                }label: {
                    Text("0")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    rest()
                }label: {
                    Text("C")
                        .foregroundColor(.red)
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    if operators.isEmpty {
                        operators = "+"
                    }
                }label: {
                    Text("+")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
            }
            Button() {
                CalculatorResult()
            }label: {
                Text("=")
                    .padding(.horizontal,180)
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .border(Color.black)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
