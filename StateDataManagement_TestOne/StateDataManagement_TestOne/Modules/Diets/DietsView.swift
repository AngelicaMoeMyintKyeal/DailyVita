//
//  DietsView.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct DietsView: View {
    var body: some View {
        
        // MARK: - NavigationStack
        NavigationStack {
            ZStack {
                CustomColors.appThemeColor.ignoresSafeArea(edges: .all)
                
                VStack {
                    HStack {
                        Text("Select the diets you follow.")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundColor(CustomColors.selectedColor)
                        Text("*")
                            .foregroundColor(.red)
                    }
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

#Preview {
    DietsView()
}
