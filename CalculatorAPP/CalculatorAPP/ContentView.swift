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
    
    func CalculatorResult () -> Int{
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
        return result
    }

    func rest () {
        number1 = 0
        number2 = 0
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
                 
                }label: {
                    Text("7")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("8")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("9")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
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
                    
                }label: {
                    Text("4")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("5")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("6")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
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
                    
                }label: {
                    Text("1")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("2")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("3")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
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
                    
                }label: {
                    Text("0")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("C")
                        .foregroundColor(.red)
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
                Button() {
                    
                }label: {
                    Text("+")
                        .padding(35)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .border(Color.black)
                }
            }
            Button() {
                
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
