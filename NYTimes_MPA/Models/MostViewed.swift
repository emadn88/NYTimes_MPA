//
//  MostViewedModel.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import Foundation

struct MostViewed: Codable, Displayable {
    let url, adxKeywords: String?
    let column: String?
    let section, byline: String?
    let type: MostViewedType?
    let title, abstract, publishedDate: String?
    let source: String?
    let id, assetID, views: Int?
    let desFacet, orgFacet, perFacet, geoFacet: Facet?
    let media: [Media]?

    enum CodingKeys: String, CodingKey {
        case url
        case adxKeywords = "adx_keywords"
        case column, section, byline
        case type, title, abstract
        case publishedDate = "published_date"
        case source, id
        case assetID = "asset_id"
        case views
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case media
    }
}
