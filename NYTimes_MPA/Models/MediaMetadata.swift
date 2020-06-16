//
//  MediaMetadata.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//
import Foundation

struct MediaMetadata: Codable {
    let url: String?
    let format: Format?
    let height, width: Int?
}
