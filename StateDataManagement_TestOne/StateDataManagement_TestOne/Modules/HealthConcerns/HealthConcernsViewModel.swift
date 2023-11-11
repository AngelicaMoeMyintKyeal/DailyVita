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
        guard let url = Bundle.main.url(forResource: "Healthconcern", withExtension: "json")
        else {
            print("Json file not found.")
            return
        }
        let data = try? Data(contentsOf: url)
        let healthConcerns = try? JSONDecoder().decode(HealthConcerns.self, from: data!)
        self.healthConcernsDataList = healthConcerns!.data
        print(self.healthConcernsDataList)
    }
}
