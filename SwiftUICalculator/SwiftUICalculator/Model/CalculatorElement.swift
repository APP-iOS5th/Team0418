//
//  CalculatorElement.swift
//  SwiftUICalculator
//
//  Created by jinwoong Kim on 4/18/24.
//

import Foundation

enum CalculatorElement: Hashable {
    case operand(Int)
    case `operator`(String)
    case floatingPoint
    case clear
    
    var isHighlightable: Bool {
        switch self {
            case .clear:
                return true
            default:
                return false
        }
    }
    
    var displayLabel: String {
        switch self {
            case let .operand(number):
                return "\(number)"
            case let .operator(opt):
                return opt
            case .floatingPoint:
                return "."
            case .clear:
                return "C"
        }
    }
}

extension CalculatorElement: Identifiable {
    var id: Self {
        return self
    }
}
