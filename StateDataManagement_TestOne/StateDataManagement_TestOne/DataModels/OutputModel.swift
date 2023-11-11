//
//  OutputModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import Foundation

// MARK: - OutputData
struct OutputData: Codable {
    let healthConcernsOutput: [HealthConcernsOutputData]
    let dietOutputData: [DietOutputData]?
    let isDailyExposure: Bool
    let isSomke: Bool
    let alchol: String
    let allergiesOutputData: [AllergiesOutputData]
    
    enum CodingKeys: String, CodingKey {
        case healthConcernsOutput = "health_concerns"
        case dietOutputData = "diets"
        case isDailyExposure = "is_daily_exposure"
        case isSomke, alchol
        case allergiesOutputData = "allergies"
    }
}

// MARK: - HealthConcernsOutputData
struct HealthConcernsOutputData: Codable {
    let id, priority: Int
    let name: String
}

// MARK: - DietsOutputData
struct DietOutputData: Codable {
    let id: Int
    let name: String
}

// MARK: - AllergiesOutputData
struct AllergiesOutputData: Codable {
    let id: Int
    let name: String
}
