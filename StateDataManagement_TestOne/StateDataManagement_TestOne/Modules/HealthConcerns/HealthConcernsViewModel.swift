//
//  HealthConcernsViewModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import SwiftUI

class HealthConcernsViewModel: ObservableObject {
    @Published var healthConcernsDataList = [HealthConcernsData]()
    
    init() {
        loadHealthConcernsData()
    }
    
    func loadHealthConcernsData() {
        guard let url = Bundle.main.url(forResource: "Healthconcern", withExtension: "json") else {
            print("Healthconcern JSON file not found.")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let healthConcerns = try JSONDecoder().decode(HealthConcerns.self, from: data)
            self.healthConcernsDataList = healthConcerns.data
            } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
        }
    }
}

