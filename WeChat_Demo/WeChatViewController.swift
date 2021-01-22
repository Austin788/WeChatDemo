//
//  WeChatView.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/18.
//

import UIKit
import Foundation

class WeChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    var WeChatTable:UITableView?
    var dataSource:[WeChatCellModel]?
    var names = ["one","two","three","four","five","six","seven","eight","nine","ten"]
    var contents = ["1111111","222222","333333","444444","555555","666666","777777","888888","999999","101010"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        let top = UIView(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:100))
        top.backgroundColor = .black
        
        let topName = UILabel(frame: CGRect(x:0, y:15, width:self.view.frame.width, height:100))
        topName.text = "微信"
        topName.font = UIFont.systemFont(ofSize:23)
        topName.textAlignment = .center
        topName.textColor = .white
        top.addSubview(topName)
        
        let topButton = UIButton(frame: CGRect(x:self.view.frame.width - 40, y:53, width:25, height:25))
        topButton.layer.cornerRadius = topButton.frame.width / 2
        topButton.setTitle("+", for: .normal)
        topButton.backgroundColor = .black
        topButton.layer.borderWidth = 2
        topButton.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        topButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        topButton.contentEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 4, right: 1)
        top.addSubview(topButton)
        self.view.addSubview(top)
        
        
        WeChatTable = UITableView(frame: CGRect(x:0, y:100, width:self.view.frame.width, height:self.view.frame.height-183), style: UITableView.Style.grouped)
        self.WeChatTable?.sectionHeaderHeight = 60
        self.WeChatTable?.sectionFooterHeight = 0
        
        WeChatTable?.backgroundColor = .darkGray
        dataSource = createDataSource()
        WeChatTable?.delegate = self
        WeChatTable?.dataSource = self
        
        

        
        self.view.addSubview(WeChatTable!)
        
        
        

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = WeChatCell()
        cell.configWeChatCell(model: (dataSource?[indexPath.row])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let maskNoReadAction = UITableViewRowAction(style: .normal, title: "标为未读") { action, index in
            print("标为未读")
        }
        let noDisplayAction = UITableViewRowAction(style: .normal, title: "不显示") { action, index in
            print("显示")
        }
        let deleteAction = UITableViewRowAction(style: .normal, title: "删除") { action, index in
            print("删除")
        }
        return [maskNoReadAction, noDisplayAction, deleteAction]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let searchView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 60))
        searchView.backgroundColor = .white
        let searchBTN = UIButton(frame: CGRect(x: 3, y: 3, width: self.view.frame.width - 6, height: 54))
        searchBTN.layer.borderWidth = 2
        searchBTN.layer.cornerRadius = 8
        searchBTN.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        searchBTN.setTitle("🔍 搜索", for: .normal)
        searchBTN.setTitleColor(.gray, for: .normal)
        searchView.addSubview(searchBTN)
        return searchView
    }
   
    
    
    
    
    func createDataSource() -> [WeChatCellModel]  {
        var models:[WeChatCellModel] = []
        for index in 0..<names.count {
            let model = WeChatCellModel()
            model.image = "rcv_bg"
            model.nickname = names[index]
            model.content = contents[index]
            models.append(model)
        }
        return models
    }
    


}
