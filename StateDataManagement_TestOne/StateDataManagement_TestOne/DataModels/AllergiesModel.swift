//
//  AllergiesModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import Foundation

// MARK: - Allergies
struct Allergies: Codable {
    let data: [AllergiesData]
}

// MARK: - AllergiesData
struct AllergiesData: Codable {
    let id: Int
    let name: String
}
