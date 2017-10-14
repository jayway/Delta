//
//  ConferencePass.swift
//  GoogleAnalyticsSample
//
//  Created by Ibrahim Yildirim on 10/14/17.
//  Copyright © 2017 Ibrahim Yildirim. All rights reserved.
//

import Foundation

class ConferencePass {
    
    enum ConferencePassType: Int {
        case oneDay = 1
        case twoDays = 2
        case threeDays = 3
        
        var price: Int {
            switch self {
            case .oneDay:
                return 600
            case .twoDays:
                return 800
            case .threeDays:
                return 1000
            }
        }
    }
    
    let passType: ConferencePassType!
    let id: String
    let name: String
    let price: Int
    
    init(passType: ConferencePassType) {
        self.passType = passType
        
        switch passType {
        case .oneDay:
            self.name = "1 Day Pass"
        case .twoDays:
            self.name = "2 Day Pass"
        case .threeDays:
            self.name = "3 Day Pass"
        }
        
        self.price = passType.price
        self.id = String(passType.rawValue)
    }
}
