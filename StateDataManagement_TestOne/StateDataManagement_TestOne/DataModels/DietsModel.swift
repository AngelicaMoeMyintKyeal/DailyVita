//
//  DietsModel.swift
//  StateDataManagement_TestOne
//
//  Created by Htet Myat Moe Myint Kyeal on 11/11/23.
//

import Foundation

// MARK: - Diets
struct Diets: Codable {
    let data: [DietsData]
}

// MARK: - DietsData
struct DietsData: Codable {
    let id: Int
    let name, toolTip: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case toolTip = "tool_tip"
    }
}

