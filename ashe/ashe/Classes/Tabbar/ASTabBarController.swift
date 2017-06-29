//
//  ASTabBarController.swift
//  ashe
//
//  Created by HuangZhen on 2017/6/8.
//  Copyright © 2017年 HuangZhen. All rights reserved.
//

import UIKit

class ASTabBarController: UITabBarController {

    override func loadView() {
        super.loadView()
        self.tabBar.barTintColor = UIColor.white
        let item :UITabBarItem = UITabBarItem.appearance()
        let selectedAttrs : [String : Any] = [NSForegroundColorAttributeName : UIColor.black]
        let normalAttrs : [String : Any] = [NSFontAttributeName : UIFont.systemFont(ofSize: 12)]
        item.setTitleTextAttributes(selectedAttrs, for: .selected)
        item.setTitleTextAttributes(normalAttrs, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        self.setupAllChildVC()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupAllChildVC() {
        let mainVC : ASNavigationController = ASNavigationController.init(rootViewController:ASMainViewController())
        let discVc : ASNavigationController = ASNavigationController.init(rootViewController: ASDiscoverViewController())
        let meVC : ASNavigationController = ASNavigationController.init(rootViewController: ASMeViewController())
        mainVC.tabBarItem.title = "Ashe"
        discVc.tabBarItem.title = "Discover"
        meVC.tabBarItem.title = "Me"
        self.viewControllers = [mainVC, discVc, meVC]
        
    }
    
}
