//
//  MostViwedViewModel.swift
//  NYTimes_MPA
//
//  Created by Emad on 6/15/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import UIKit

protocol MostViewedViewModelDelegate: class {
    func SuccessRetrivingResult()
    func FailureRetrivingResult(error msg: String)
}

class MostViwedViewModel: NSObject {

    // MARK: - Public Varibles

    weak var delegate: MostViewedViewModelDelegate?
    var dataSourceObjects = [MostViewed]()

    // MARK: - Private Varibles

    private var dataManager: DataProvider

    init(dataManager: DataProvider) {
        self.dataManager = dataManager
    }

    /// fetch Data from source etc ..Webservice/DataBase
    func fetchData() {
        dataManager.getNYTimesArticles { isSuccess, status, result in
            if isSuccess {
                guard let mostViewedResult = result as? [MostViewed] else {
                    return
                }
                self.dataSourceObjects = mostViewedResult
                self.delegate?.SuccessRetrivingResult()
            } else {
                var msg = "Message"
                switch status {
                case .connectionError,
                     .unknown: /* unknown status come from backend */
                    msg = "Connection error"
                default:
                    msg = "No Data Found"
                }

                self.delegate?.FailureRetrivingResult(error: msg)
            }
        }
    }
}

