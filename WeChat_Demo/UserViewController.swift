//
//  UserViewController.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/18.
//

import UIKit

class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    
    
    var userTable:UITableView?
    var dataSource:[[GeneralCellModel]]?
    var contents = [["支付"],["收藏", "朋友圈", "卡包", "表情"],["设置"]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        let topPhoto = UIButton(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:100))
        topPhoto.backgroundColor = .black
        topPhoto.setTitle("📷", for: .normal)
        topPhoto.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        topPhoto.contentEdgeInsets = UIEdgeInsets(top: 30, left: self.view.frame.width-60, bottom: 0, right: 10)
        self.view.addSubview(topPhoto)
        
        
//        var userInfo = UIView(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 120))
//        userInfo.addSubview(UserInfoView(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 120)).createInfoView())
//        userInfo.backgroundColor = .red
//        self.view.addSubview(userInfo)
        
        self.view.addSubview(UserInfoView(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 160)).createInfoView())
        
        
        dataSource = createDataSource()
        userTable = UITableView(frame: CGRect(x:0, y:260, width:self.view.frame.width, height:self.view.frame.height-343), style: UITableView.Style.grouped)
        userTable?.delegate = self
        userTable?.dataSource = self
        userTable?.sectionFooterHeight = 5
        userTable?.sectionHeaderHeight = 0

        self.view.addSubview(userTable!)
        
        
        
    }

   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0 || section == 2) {
            return 1
        } else {
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = GeneralCell()
        cell.configExploreCell(model: (self.dataSource?[indexPath.section][indexPath.row])!)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    func createDataSource() -> [[GeneralCellModel]]  {
        var models:[[GeneralCellModel]] = []
        for index in 0..<contents.count {
            var modelGroup:[GeneralCellModel] = []
            for num in 0..<contents[index].count {
                let model = GeneralCellModel()
                model.image = "rcv_bg"
                model.content = contents[index][num]
                modelGroup.append(model)
            }
            models.append(modelGroup)
        }
        return models
    }


}
