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
    
//    func onPressed() -> V{
//        Text(number1)
//    }
    
    var body: some View {
        VStack {
            Text("\(number1) \(operators) \(number2)")
                .font(.largeTitle)
        }
        Spacer()

        VStack {
            HStack {
                Button() {
                    
                }label: {
                    Text("7")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("8")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("9")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("/")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    
                }label: {
                    Text("4")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("5")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("6")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("*")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    
                }label: {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("2")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("3")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("-")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                
            }
            HStack {
                Button() {
                    
                }label: {
                    Text(".")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("0")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("C")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
            }
            Button() {
                
            }label: {
                Text("=")
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
