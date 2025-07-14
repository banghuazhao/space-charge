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

    #if DEBUG
        static let bannerAdUnitID = "ca-app-pub-3940256099942544/2934735716"
        static let interstitialAdID = "ca-app-pub-3940256099942544/1033173712"
    #else
        static let bannerAdUnitID = "ca-app-pub-4766086782456413/7626484326"
        static let interstitialAdID = "ca-app-pub-4766086782456413/6313402655"
    #endif

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
