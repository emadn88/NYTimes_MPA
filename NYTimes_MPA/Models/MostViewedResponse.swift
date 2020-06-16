//
//  MostViewedResponse.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import Foundation

struct MostViewedResponse: Codable, JSONDecoderable, Displayable {
    let status, copyright: String?
    let numResults: Int?
    let results: [MostViewed]?

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}
