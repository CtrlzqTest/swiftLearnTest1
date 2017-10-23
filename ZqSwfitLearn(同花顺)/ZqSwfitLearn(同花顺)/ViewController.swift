//
//  ViewController.swift
//  ZqSwfitLearn(同花顺)
//
//  Created by zhangqiang on 2017/10/23.
//  Copyright © 2017年 zhangqiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarVC:BaseTabbarController = Utility.getControllerWithStoryBoardId(kTabbarControllerId) as! BaseTabbarController
        self.addChildViewController(tabBarVC)
        self.view.addSubview(tabBarVC.view)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

