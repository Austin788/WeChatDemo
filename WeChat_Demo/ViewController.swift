//
//  ViewController.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/18.
//

import UIKit

class ViewController: UITabBarController {
    
    let tabBarTitles = ["微信","通信录","发现","我"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addDefaultChildViewControllers()
        setChildViewControllerItem()
        print(self.tabBar.bounds.size.height)
        
        
        
        
    }
    
    func addDefaultChildViewControllers() {
        let WeChatVC = WeChatViewController()
        let MailListVC = MailListViewController()
        let ExploreVC = ExploreViewController()
        let UserVC = UserViewController()
        viewControllers = [WeChatVC,MailListVC,ExploreVC,UserVC]
    }
    
    
    
    /// 设置子页面的item项
    fileprivate func setChildViewControllerItem() {
        guard let containViewControllers = viewControllers else {
            print("⚠️  设置子页面 item 项失败  ⚠️")
            return
        }
        
        if containViewControllers.count != tabBarTitles.count {
            fatalError("子页面数量和设置的tabBarItem数量不一致，请检查！！")
        }
        
    
        
        
        //  遍历子页面
        for (index, singleVC) in containViewControllers.enumerated() {
            singleVC.tabBarItem.title = tabBarTitles[index]
            singleVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18)], for: .normal)
        }
        
        
    }


}

