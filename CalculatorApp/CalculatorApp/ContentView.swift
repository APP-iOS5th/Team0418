//
//  ContentView.swift
//  CalculatorApp
//
//  Created by 백동현 on 4/18/24.
//

import SwiftUI

enum ButtonType: String {
  case zero = "0", one = "1", two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9"
  case comma = ".", plus = "+", minus = "-", multiple = "*", devide = "/"
  case clear = "C"
}

extension Double {
    func formattedString() -> String {
        if self == Double(Int(self)) {
            return String(Int(self))
        } else {
            return String(self)
        }
    }
}


struct KeypadStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 80, height: 80)
      .background(.white)
      .border(Color.white, width: 1)
      .cornerRadius(40)
      .font(.system(size: 30))
  }
}

struct ContentView: View {

  private let numberData: [[ButtonType]] = [
    [.seven, .eight, .nine, .devide],
    [.four, .five, .six, .multiple],
    [.one, .two, .three, .minus],
    [.comma, .zero, .clear, .plus],
  ]


  @State var calculateText: String = "0"
  @State var tempNumber: Double = 0
  @State var operatorType: ButtonType = .clear
  var body: some View {
    GeometryReader { geometry in
      VStack {
        Spacer()
        HStack {
          Spacer()
          Text(calculateText)
            .padding()
            .font(.system(size: 80))
            .foregroundColor(.white)
        }
        ForEach(numberData, id: \.self) { itemList in
          HStack {
            ForEach(itemList, id: \.self) { item in
              Button(action: {
                calculateButton(item: item)
              }) {
                Text(item.rawValue)
                  .modifier(KeypadStyle())
                  .foregroundColor(item != .clear ? .black : .red)
              }
            }
          }
        }
        Button(action: { calculate() }) {
          Text("=")
            .frame(width: geometry.size.width - 45, height: 80)
            .background(.white)
            .border(Color.white, width: 1)
            .cornerRadius(40)
            .font(.system(size: 30))
        }
      }
      .padding()
      .background(.black)
    }
  }

  // 계산기 버튼 처리
  func calculateButton(item: ButtonType) {
    if (item == .clear) {
      return calculateText = ButtonType.zero.rawValue
    }

    if calculateText == ButtonType.zero.rawValue {

      switch item {
        case .devide, .minus, .multiple, .plus:
          return calculateText = ButtonType.zero.rawValue
      case .comma:
        return calculateText += ButtonType.comma.rawValue
        default:
          return calculateText = item.rawValue
      }

    } else {
      switch item {
        case .devide, .minus, .multiple, .plus:
          tempNumber = Double(calculateText)!
          calculateText = ButtonType.zero.rawValue;
          return operatorType = item;
        case .comma:
          if calculateText.contains(ButtonType.comma.rawValue) {
            return
          } else {
            return calculateText += item.rawValue
          }
        default:
          return calculateText += item.rawValue
      }

    }
  }

  // 계산 처리
  func calculate() {
    switch operatorType {
      case .plus:
        let result = tempNumber + Double(calculateText)!
        return calculateText = "\(result.formattedString())"
      case .minus:
        let result = tempNumber - Double(calculateText)!
        return calculateText = "\(result.formattedString())"
      case .multiple:
        let result = tempNumber * Double(calculateText)!
        return calculateText = "\(result.formattedString())"
      case .devide:
        let result = tempNumber / Double(calculateText)!
        return calculateText = "\(result.formattedString())"
      default:
        return
      }
  }
}

#Preview {
  ContentView()
}
