//
//  ClientAPI.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import Foundation

class ClientAPI {

    /// Get NewYork Times Mostviewed Articles for Section and with the period
    ///
    /// - Parameters:
    ///   - section: the name of the section to get the mostviewed articles for by defult it have value "all-sections"
    ///   - timePeriod: period time iy have defult value "7" available period values are 1, 7 and 30, which represents how far back, in days, the API returns results for
    ///   - completionHandler: closuere that hold ther return result
    static func getNYTimesArticles(forSection section: String = "all-sections", withTime timePeriod: String = "7", completionHandler: @escaping (NetworkResult<Any>) -> Void) {

        guard let urlRoute = URLFactory.getURL(.mostviewed, section: section, timePeriod: timePeriod).url else {
            completionHandler(NetworkResult.failure(.noInternet))
            return
        }

        guard let url = APIRequestHandler.share.createRequest(url: urlRoute, forceUpdate: false) else {
            completionHandler(NetworkResult.failure(.noInternet))
            return
        }

        APIRequestHandler.share.InvokeURLRequest(request: url) { response in
            completionHandler(response)
        }
    }
}
