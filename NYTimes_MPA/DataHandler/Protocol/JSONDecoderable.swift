//
//  JSONDecoderable.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import Foundation

protocol JSONDecoderable {
    static func decodeJsonData<T: Codable>(parcelable: T.Type, _ jsonData: Data, isObject: Bool) -> Any?
}

extension JSONDecoderable where Self: Codable {
    static func decodeJsonData<T: Codable>(parcelable: T.Type, _ jsonData: Data, isObject: Bool) -> Any? {
        do {
            let jsonDecoder = JSONDecoder()
            var result: Any?
            if isObject {
                let object = try jsonDecoder.decode(T.self, from: jsonData)
                result = object
            } else {
                let list = try jsonDecoder.decode([T].self, from: jsonData)
                result = list
            }
            return result
        } catch let error {
            debugPrint(error.localizedDescription)
            return nil
        }
    }
}
