//
//  Constants.swift
//  Crazy Pyramid
//
//  Created by Banghua Zhao on 12/19/19.
//  Copyright © 2019 Banghua Zhao. All rights reserved.
//

import UIKit

struct Constants {
    static let isIPhone: Bool = UIDevice.current.userInterfaceIdiom == .phone

    // ca-app-pub-4766086782456413~9131137681
    static let adMobAppID = ""

    static let bannerAdUnitID = Bundle.main.object(forInfoDictionaryKey: "bannerViewAdUnitID") as? String ?? ""
    static let interstitialAdID = Bundle.main.object(forInfoDictionaryKey: "interstitialAdID") as? String ?? ""

    struct UserDefaultsKeys {
        static let OPEN_COUNT = "OPEN_COUNT"
        static let BEST_SCORE = "BEST_SCORE"
    }
    
    static var isIphoneFaceID: Bool {
        if let topInset = UIApplication.shared.delegate?.window??.safeAreaInsets.top, topInset <= 24 {
            return false
        } else {
            return true
        }
    }
}
