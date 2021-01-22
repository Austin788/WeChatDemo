//
//  ExploreCell.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/20.
//

import UIKit

class GeneralCell: UITableViewCell {
    public func configExploreCell(model: GeneralCellModel) {
                
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
        imageView.image = UIImage(named: model.image ?? "rcv_bg")
        self.addSubview(imageView)
        
        let content = UILabel(frame: CGRect(x: 50, y: 15, width: 100, height: 25))
        content.text = model.content
        content.font = UIFont.systemFont(ofSize: 25)
        content.textAlignment = .center
        self.addSubview(content)
        
        let link = UILabel(frame: CGRect(x: self.bounds.width+50, y: 15, width: 25, height: 25))
        link.text = ">"
        link.textAlignment = .center
        self.addSubview(link)
        
    }
}
