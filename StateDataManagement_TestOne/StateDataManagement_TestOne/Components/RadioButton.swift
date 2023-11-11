//
//  RadioButton.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct RadioButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(isSelected ? CustomColors.selectedColor : .gray)
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(CustomColors.selectedColor)
            }
        }
    }
}
