//
//  DietsViewModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

class DietsViewModel: ObservableObject {
    @Published var dietsDataList = [DietsData]()
    
    init() {
        loadDietsData()
    }
    
    func loadDietsData() {
        guard let url = Bundle.main.url(forResource: "Diets", withExtension: "json") else {
            print("Diets JSON file not found.")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let diets = try JSONDecoder().decode(Diets.self, from: data)
            self.dietsDataList = diets.data
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
        }
    }
}
