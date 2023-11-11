//
//  ContentView.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var goToHealthConcernsView: Bool = false
    
    var body: some View {
        
        // MARK: - Navigation Stack
        NavigationStack {
            
            ZStack {
                
                CustomColors.appThemeColor.ignoresSafeArea(edges: .all)
                
                VStack {
                    Text("Welcome to DailyVita")
                        .foregroundColor(CustomColors.selectedColor)
                        .padding(.init(top: 20, leading: 30, bottom: 20, trailing: 30))
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                    
                    Text("Hello, we are here to make your life healthier and happier.")
                        .foregroundColor(CustomColors.selectedColor)
                        .padding(.init(top: 20, leading: 30, bottom: 20, trailing: 30))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                       
                    Image("onboardingImage")
                    
                    Text("We will ask a couple of questions to better understand your vitamin need.")
                        .foregroundColor(CustomColors.selectedColor)
                        .padding(.init(top: 20, leading: 30, bottom: 20, trailing: 30))
                        .font(.system(size: 18))
                    
                    Button {
                        goToHealthConcernsView = true
                    } label: {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(CustomColors.customButtonColor)
                    .frame(maxWidth: .infinity)
                    .padding()
                }
            }
            .navigationDestination(isPresented: $goToHealthConcernsView) {
                HealthConcernsView()
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
