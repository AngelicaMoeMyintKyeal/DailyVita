//
//  QuestionnairesView.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

struct QuestionnairesView: View {
    var body: some View {
        
        // MARK: - NavigationStack
        NavigationStack {
            ZStack {
                CustomColors.appThemeColor.ignoresSafeArea(edges: .all)
                
                VStack {
                    
                    YesNoRadioButtonGroup(questionText: "Is your daily exposure to sun is limited?")
                        .padding()
                    
                    YesNoRadioButtonGroup(questionText: "Do you current smoke (tobacco or marijuana)?")
                        .padding()
                    
                    YesNoRadioButtonGroup(questionText: "On average, how many alcholic beverages do you have in a week?", isForYesNo: false)
                        .padding()
                    
                    Button {
//                        goToHealthConcernsView = true
                    } label: {
                        Text("Get my personalized vitamin")
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
        }
        
    }
}

#Preview {
    QuestionnairesView()
}

struct QuestionComponent: View {
    
    var text: String = ""
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(CustomColors.selectedColor)
            Text("*")
                .foregroundColor(.red)
        }
    }
}

struct YesNoRadioButtonGroup: View {
    @State var questionText: String = ""
    @State private var selectedOption: String = ""
    var isForYesNo: Bool = true

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(questionText)
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(CustomColors.selectedColor)
                Text("*")
                    .foregroundColor(.red)
            }
            
            if !isForYesNo {
                RadioButton(title: "0 - 1", isSelected: selectedOption == "0 - 1") {
                    selectedOption = "0 - 1"
                }
                
                RadioButton(title: "2 - 5", isSelected: selectedOption == "2 - 5") {
                    selectedOption = "2 - 5"
                }
                
                RadioButton(title: "5 +", isSelected: selectedOption == "5 +") {
                    selectedOption = "5 +"
                }
            } else {
                RadioButton(title: "Yes", isSelected: selectedOption == "Yes") {
                    selectedOption = "Yes"
                }

                RadioButton(title: "No", isSelected: selectedOption == "No") {
                    selectedOption = "No"
                }
            }
            
            Text("Selected option: \(selectedOption)")
                .padding(.top, 20)
        }
        .padding()
    }
}
