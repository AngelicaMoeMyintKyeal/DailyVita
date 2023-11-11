//
//  PrioritzeItem.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct PrioritzeItem: View {
    
    var prioritzeItemName: String = ""
    var body: some View {
        VStack {
            HStack {
                CustomTextCapsule(text: prioritzeItemName)
                    .padding(.leading, 10)
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .padding(.trailing, 10)
            }
            .frame(height: 100)
        }
    }
}

#Preview {
    PrioritzeItem(prioritzeItemName: "Sleep")
}
