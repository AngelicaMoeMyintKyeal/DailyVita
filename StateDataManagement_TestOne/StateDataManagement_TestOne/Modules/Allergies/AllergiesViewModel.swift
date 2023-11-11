//
//  AllergiesViewModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

class AllergiesViewModel: ObservableObject {
    @Published var allergiesDataList = [AllergiesData]()
    
    init() {
        loadAllergiesData()
    }
    
    func loadAllergiesData() {
        guard let url = Bundle.main.url(forResource: "Allergies", withExtension: "json") else {
            print("Diets JSON file not found.")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let allergies = try JSONDecoder().decode(Allergies.self, from: data)
            self.allergiesDataList = allergies.data
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
        }
    }
}
