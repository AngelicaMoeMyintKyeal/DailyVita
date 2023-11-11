//
//  ProgressBar.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                GeometryReader { geometry in
                    Capsule()
                        .fill(Color.clear)
                        .frame(width: geometry.size.width, height: 10)
                    
                    Capsule()
                        .fill(CustomColors.selectedColor)
                        .frame(width: geometry.size.width * progress, height: 10)
                }
            }
        }
    }
}


struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 0.5)
    }
}
