//
//  Utility.swift
//  FlushDemo(同花顺)
//
//  Created by zhangqiang on 2017/10/20.
//  Copyright © 2017年 zhangqiang. All rights reserved.
//

import UIKit

class Utility: NSObject {
    
    
    
    
    // 设置登录状态
    class func setLoginStates(_ status:Bool) {
        UserDefaults.standard.set(status, forKey: "isLogin")
    }
    
    // 获取登录状态(是否登录)
    class func isLogin() -> Bool {
        return UserDefaults.standard.bool(forKey: "isLogin")
    }
    
    // 是否第一次进入App
    class func isFirstLoadding() -> Bool {
        let flag = UserDefaults.standard.bool(forKey: "isFirstLoadding") //第一次flag为false
        if !flag {
            UserDefaults.standard.set(true, forKey: "isFirstLoadding")
            UserDefaults.standard.synchronize()
        }
        return !flag;
    }
    
    // 根据id获取控制器
    class func getControllerWithStoryBoardId(_ storyBoardId:String)->UIViewController {
        
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: storyBoardId)
        
    }

}
