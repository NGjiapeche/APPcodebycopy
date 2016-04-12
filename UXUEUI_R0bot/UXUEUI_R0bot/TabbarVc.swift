//
//  TabbarVc.swift
//  UXUEUI_R0bot
//
//  Created by PilotLabHome on 16/4/12.
//  Copyright © 2016年 PilotLabHome. All rights reserved.
//

import UIKit
 let MaxH  = UIScreen.mainScreen().bounds.size.height
  let MaxW = UIScreen.mainScreen().bounds.size.height
class TabbarVc: UITabBarController {
    var backgv  = UIView()
    
    var btn1: UIButton!
    var btn2: UIButton!
    var btn3: UIButton!
    

    override func viewDidLoad() {
    
        backgv.frame = CGRect(x: 0, y: 0, width: MaxW, height: 60)
        backgv.backgroundColor = UIColor.whiteColor()
        self.tabBar.addSubview(backgv)
        
        btn1 = UIButton(type: .Custom)
          btn2 = UIButton(type: .Custom)
          btn3 = UIButton(type: .Custom)
        
        btn1.frame = CGRect(x: 40, y: 10, width: MaxW / 3.0 - 80, height: 34)
        btn2.frame = CGRect(x: MaxW / 3.0 + 40, y: 10, width: MaxW / 3.0 - 80, height: 34)
        btn3.frame = CGRect(x: MaxW / 3.0 * 2 + 40, y: 10, width: MaxW / 3.0 - 80, height: 34)
        
        btn1.addTarget(self, action: Selector("changitem:"), forControlEvents: .TouchUpInside)
        btn1.tag = 101
        backgv.addSubview(btn1)
        btn2.addTarget(self, action: Selector("changitem:"), forControlEvents: .TouchUpInside)
        btn2.tag = 102
        backgv.addSubview(btn2)
        btn3.addTarget(self, action: Selector("changitem:"), forControlEvents: .TouchUpInside)
        btn3.tag = 103
        backgv.addSubview(btn3)
        
    }

    func changitem(sender: UIButton) {
        switch sender {
        case btn1:
            self.selectedIndex = 0
        case btn2:
            self.selectedIndex = 0
        case btn3:
            self.selectedIndex = 0
        default: break
        }
    }
    

 

}
