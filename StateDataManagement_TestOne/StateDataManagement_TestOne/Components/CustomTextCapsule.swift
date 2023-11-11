//
//  CustomTextCapsule.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct CustomTextCapsule: View {
    
    var text: String = ""
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .font(.system(size: 12))
            .padding(.horizontal, 120)
            .padding(.vertical, 30)
            .background(
                Capsule()
                    .fill(CustomColors.selectedColor)
            )
    }
}

#Preview {
    CustomTextCapsule(text: "Text")
}
