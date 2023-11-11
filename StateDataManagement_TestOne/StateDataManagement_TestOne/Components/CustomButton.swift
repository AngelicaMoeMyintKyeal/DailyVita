//
//  CustomButton.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct CustomButton: View {
    @State private var isPressed = false
    @State var buttonTitle: String = ""
    var body: some View {
        
        VStack {
            Button {
                isPressed.toggle()
            } label: {
                Text(buttonTitle)
                    .foregroundColor(isPressed ? .white : CustomColors.selectedColor)
                    .fontWeight(.medium)
                    .padding()
                    .font(.system(size: 12))
                    .background(
                        CustomColors.selectedColor.opacity(isPressed ? 1.0 : 0),
                        in: RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                    )
            }
            .padding()
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonTitle: "Custom Button Title")
    }
}
