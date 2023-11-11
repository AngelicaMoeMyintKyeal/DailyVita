//
//  HealthConcernsModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import Foundation

// MARK: - HealthConcerns
struct HealthConcerns: Codable {
    let data: [HealthConcernsData]
}

// MARK: - HealthConcernsData
struct HealthConcernsData: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
}
