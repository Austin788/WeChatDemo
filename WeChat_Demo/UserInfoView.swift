//
//  UserInfoView.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/22.
//

import UIKit
class UserInfoView: UIView {
    func createInfoView() -> UIView {
        let userPhoto = UIImageView(frame: CGRect(x: 20, y: 40, width: 80, height: 80))
        userPhoto.image = UIImage(named: "rcv_bg")
        userPhoto.layer.cornerRadius = 20
        self.addSubview(userPhoto)
        
        let userName = UILabel(frame: CGRect(x: 120, y: 40, width: self.frame.width - 100, height: 40))
        userName.text = "这是我的昵称"
        userName.font = UIFont.systemFont(ofSize: 25)
        self.addSubview(userName)
        
        let WeChat = UILabel(frame: CGRect(x: 120, y: 80, width: 100, height: 40))
        WeChat.text = "微信号:"
        WeChat.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(WeChat)
        
        let WeChatId = UILabel(frame: CGRect(x: 190, y: 80, width: self.frame.width - 140, height: 40))
        WeChatId.text = "WeChat123456"
        WeChatId.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(WeChatId)
        
        let QRcode = UILabel(frame: CGRect(x: self.bounds.width-60, y: 80, width: 40, height: 40))
        QRcode.text = "⚄"
        QRcode.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(QRcode)
        
        let link = UILabel(frame: CGRect(x: self.bounds.width-35, y: 80, width: 40, height: 40))
        link.text = ">"
        link.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(link)
        
        return self
        
    }
    
}
