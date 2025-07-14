//
//  GameViewController.swift
//  Space Charge
//
//  Created by Banghua Zhao on 6/3/20.
//  Copyright © 2020 Banghua Zhao. All rights reserved.
//

import GameplayKit
import SpriteKit
import UIKit

import GoogleMobileAds
import SnapKit

var bannerView: GADBannerView = {
    let bannerView = GADBannerView()
    bannerView.adUnitID = Constants.bannerAdUnitID
    bannerView.load(GADRequest())
    return bannerView
}()

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill

                // Present the scene
                view.presentScene(scene)
            }

            view.ignoresSiblingOrder = true

//            view.showsFPS = true
//            view.showsNodeCount = true
        }

        view.addSubview(bannerView)
        bannerView.rootViewController = self
        bannerView.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalToSuperview()
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
