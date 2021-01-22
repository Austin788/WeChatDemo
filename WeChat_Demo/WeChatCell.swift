//
//  WeChatCell.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/19.
//

import UIKit

class WeChatCell: UITableViewCell {
    
//    private var imageview:UIImageView?
//
//    init(<#parameters#>) {
//
//        imageview = UIImageView(frame: <#T##CGRect#>)
//        self.addSubview(imageview)
//
//
//    }
    
    public func configWeChatCell(model: WeChatCellModel) {
                
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 55, height: 55))
        imageView.image = UIImage(named: model.image ?? "rcv_bg")
        self.addSubview(imageView)
        
        let nickname = UILabel(frame: CGRect(x: 75, y: 10, width: self.frame.width - 75, height: 25))
        nickname.text = model.nickname
        nickname.font = UIFont.systemFont(ofSize: 25)
        self.addSubview(nickname)
        
        let content = UILabel(frame: CGRect(x: 75, y: 35, width: self.frame.width - 75, height: 25))
        content.text = model.content
        content.textColor = .gray
        self.addSubview(content)
        
                
        
    }
    
}
