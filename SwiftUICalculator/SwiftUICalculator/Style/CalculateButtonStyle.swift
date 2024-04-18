//
//  CalculateButtonStyle.swift
//  SwiftUICalculator
//
//  Created by jinwoong Kim on 4/18/24.
//

import SwiftUI

struct CalculateButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 40)
            .frame(maxWidth: .infinity)
            .background(alignment: .center) {
                Rectangle()
                    .stroke(lineWidth: 1.0)
            }
    }
}

extension ButtonStyle where Self == CalculateButtonStyle {
    static var calculate: CalculateButtonStyle {
        CalculateButtonStyle()
    }
}
