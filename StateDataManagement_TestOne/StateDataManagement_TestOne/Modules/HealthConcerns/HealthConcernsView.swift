//
//  HealthConcernsView.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct HealthConcernsView: View {
    
    @ObservedObject var healthConcernsViewModel = HealthConcernsViewModel()
    
    var body: some View {
        
        // MARK: - NavigationStack
        NavigationStack {
            
            ZStack {
                CustomColors.appThemeColor.ignoresSafeArea(edges: .all)
                
                VStack {
                    
                    HealthConcernsSelectionView(healthConcernsDataList: healthConcernsViewModel.healthConcernsDataList)
                    
                    
                    HealthConcernsPrioritzeView()
                    
                    // MARK: Button HStack
                    HStack {
                        Button {
                            // TODO: Write go back function
                        } label: {
                            Text("Back")
                                .fontWeight(.bold)
                                .foregroundColor(CustomColors.customButtonColor)
                                .fontWeight(.bold)
                                .padding(.leading, 60)
                        }
                        .padding()
                        
                        Button {
//                            goToHealthConcernsView = true
                        } label: {
                            Text("Next")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(CustomColors.customButtonColor)
                        .frame(maxWidth: .infinity)
                        .padding()
                        
                    }
                    .padding()
                } // end of VStack
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct HealthConcernsView_Previews: PreviewProvider {
    static var previews: some View {
        HealthConcernsView()
    }
}


struct HealthConcernsSelectionView: View {
    @State var healthConcernsDataList = [HealthConcernsData]()
    var selectedHealthConcerns = [String]()
    var columns: [GridItem] = [GridItem(.adaptive(minimum: 130))]
    
    var body: some View {
        VStack {
            HStack {
                Text("Select the top health concerns. \n(up to 5)")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(CustomColors.selectedColor)
                Image(systemName: "staroflife.fill")
                    .foregroundColor(.red)
            }
            .padding(.bottom, 10)
            
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(healthConcernsDataList, id: \.self) { healthConcern in
                    CustomButton(buttonTitle: healthConcern.name)
                }
            }
            .padding([.top, .bottom], 5)
        }
    }
}

struct HealthConcernsPrioritzeView: View {
    @State var selectedHealthConcernsList = [String]()
    @State var draggedString = ""
    
    var body: some View {
        VStack {
            Text("Prioritize")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(CustomColors.selectedColor)
        }
    }
}
