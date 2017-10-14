//
//  GAConstants.swift
//  GoogleAnalyticsSample
//
//  Created by Ibrahim Yildirim on 10/14/17.
//  Copyright © 2017 Ibrahim Yildirim. All rights reserved.
//

import Foundation

struct GAConstants {
    static let trackingId = "UA-108103555-1"
}

class GAHelper {
    static func sendCheckoutEvent(conferencePass: ConferencePass, checkOutStep: Int) {
        let product = GAIEcommerceProduct()
        product.setId(conferencePass.id)
        product.setName(conferencePass.name)
        product.setPrice(conferencePass.price as NSNumber)
        
        let builder = GAIDictionaryBuilder.createEvent(withCategory: "Ecommerce", action: "Checkout", label: nil, value: nil)!
        let action = GAIEcommerceProductAction()
        action.setAction(kGAIPACheckout)
        action.setCheckoutStep(checkOutStep as NSNumber)
        builder.setProductAction(action)
        
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.send(builder.build() as! [AnyHashable : Any])
    }
}
