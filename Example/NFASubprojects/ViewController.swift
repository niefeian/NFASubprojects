//
//  ViewController.swift
//  NFASubprojects
//
//  Created by 335074307@qq.com on 04/21/2020.
//  Copyright (c) 2020 335074307@qq.com. All rights reserved.
//

import UIKit
import NFASubprojects
import NFAToolkit
import SwiftProjects

class ViewController: BaseProVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppPopDelegate.sharedInstance.regisLodingPop(UIImage.init(named: "loading_luopan")!, runImage: UIImage.init(named: "loading_zhizheng")!)
        Tools.delay(1) {
            NotificationCenter.default.post(name: NSNotification.Name.init(PopConstants.ShowLoding), object: "正在加载..")
        }
        
        Tools.delay(6) {
            NotificationCenter.default.post(name: NSNotification.Name.init(PopConstants.Disappear), object: "正在加载..")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

