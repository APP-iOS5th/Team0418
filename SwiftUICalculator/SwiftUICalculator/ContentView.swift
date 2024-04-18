//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by jinwoong Kim on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var equation = "0"
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private let items: [CalculatorElement] = [
        .operand(7), .operand(8), .operand(9), .operator("/"),
        .operand(4), .operand(5), .operand(6), .operator("*"),
        .operand(1), .operand(2), .operand(3), .operator("-"),
        .floatingPoint, .operand(0), .clear, .operator("+")
    ]
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text(equation)
                .font(.largeTitle)
                .padding()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    Button {
                        appendElement(with: item)
                    } label: {
                        Text(item.displayElement)
                            .foregroundStyle(item.isClearElement ? .red : .black)
                    }

                }
            }
            .buttonStyle(.calculate)
            Button("=") {
                calculate()
            }
            .buttonStyle(.calculate)
        }
    }
    
    func appendElement(with element: CalculatorElement) {
        guard !element.isClearElement else {
            equation = "0"
            return
        }
        
        guard let first = equation.first else {
            return
        }
        
        if first == "0" { equation = element.displayElement }
        else {
            equation.append(element.displayElement)
        }
    }
    
    func calculate() {
        let expressiveValue = NSExpression(format: equation).expressionValue(with: nil, context: nil)
        if let result = expressiveValue as? Int {
            equation = "\(result)"
        } else if let result = expressiveValue as? Double {
            equation = "\(result)"
        } else {
            equation = ""
        }
    }
}

#Preview {
    ContentView()
}
