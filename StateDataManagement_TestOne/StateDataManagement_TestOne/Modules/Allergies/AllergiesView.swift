//
//  AllergiesView.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct AllergiesView: View {
    var body: some View {
        
        // MARK: - NavigationStack
        NavigationStack {
            ZStack {
                CustomColors.appThemeColor.ignoresSafeArea(edges: .all)
                
                VStack {
                    HStack {
                        Text("Write any specific allergies or sensitivity towards specific things. (optinal)")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundColor(CustomColors.selectedColor)
                    }
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

#Preview {
    AllergiesView()
}
