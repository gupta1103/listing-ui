//
//  FiltersModel.swift
//  DisplayFiltersUI
//
//  Created by Akanksha Gupta on 26/07/21.
//

import Foundation

struct FiltersModel: Codable {
    let data: DataClass?
}

struct DataClass: Codable {
    let categories: [Category]?
    let exclude_list: [[ExcludeList]]?
}

struct Category: Codable {
    let category_id: String?
    let filters: [Filter]?
    let name: String?
}

struct Filter: Codable {
    let filterDefault: Int?
    let id, name: String?

    enum CodingKeys: String, CodingKey {
        case filterDefault = "default"
        case id, name
    }
}

struct ExcludeList: Codable {
    let category_id: String?
    let filter_id: String?
}

