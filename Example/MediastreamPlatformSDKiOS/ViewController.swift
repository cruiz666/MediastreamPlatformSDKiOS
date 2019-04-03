//
//  ViewController.swift
//  MediastreamPlatformSDKiOS
//
//  Created by cruiz666 on 03/22/2019.
//  Copyright (c) 2019 cruiz666. All rights reserved.
//

import UIKit
import MediastreamPlatformSDKiOS

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let playerConfig = MediastreamPlayerConfig()
        let mdstrm = MediastreamPlatformSDK()
        playerConfig.accountID = "5c77f788d8db7834e6a56f93"
        playerConfig.id = "5c9a3faf0855102823848f34"
        playerConfig.type = MediastreamPlayerConfig.VideoTypes.VOD
        playerConfig.environment = MediastreamPlayerConfig.Environments.DEV
        playerConfig.showControls = false
        playerConfig.customUI = true
        self.addChild(mdstrm)
        self.view.addSubview(mdstrm.view)
        mdstrm.setup(playerConfig)
        mdstrm.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
