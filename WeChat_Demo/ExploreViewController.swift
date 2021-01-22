//
//  FindViewController.swift
//  WeChat_Demo
//
//  Created by Austin Zheng on 2021/1/18.
//

import UIKit

class ExploreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var exploreTable:UITableView?
    var dataSource:[[GeneralCellModel]]?
    var contents = [["朋友圈"],["视频号"],["扫一扫","摇一摇"],["看一看","搜一搜"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        self.dataSource = createDataSource()
        
        let top = UIView(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:90))
        top.backgroundColor = .black
        
        let topName = UILabel(frame: CGRect(x:0, y:15, width:self.view.frame.width, height:90))
        topName.text = "发现"
        topName.font = UIFont.systemFont(ofSize:20)
        topName.textAlignment = .center
        topName.textColor = .white
        top.addSubview(topName)
        self.view.addSubview(top)
        
        exploreTable = UITableView(frame: CGRect(x: 0, y: 90, width: self.view.frame.width, height: self.view.frame.height-173), style: UITableView.Style.grouped)
//        exploreTable?.backgroundColor = .green
        exploreTable?.dataSource = self
        exploreTable?.delegate = self
        exploreTable?.sectionHeaderHeight = 0
        exploreTable?.sectionFooterHeight = 5
        exploreTable?.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view.addSubview(exploreTable!)
        
        
        
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 2 || section == 3) {
            return 2
        } else {
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = GeneralCell()
        cell.configExploreCell(model: (self.dataSource?[indexPath.section][indexPath.row])!)
        return cell

    }
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "12345")
//        let section = indexPath.section
//        let row = indexPath.row
//        switch section {
//        case 0:
//            cell.textLabel?.text = "朋友圈"
//        case 1:
//            cell.textLabel?.text = "视频号"
//        case 2:
//            if (row == 0) {
//                cell.textLabel?.text = "扫一扫"
//            }
//            else {
//                cell.textLabel?.text = "摇一摇"
//            }
//        case 3:
//            if (row == 0) {
//                cell.textLabel?.text = "看一看"
//            }
//            else {
//                cell.textLabel?.text = "搜一搜"
//            }
//        default:
//            break
//        }
//        return cell
//    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 0
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return nil
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    


}
