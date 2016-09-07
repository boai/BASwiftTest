//
//  DemoVC3_View2.swift
//  BASwiftTest
//
//  Created by boai on 16/9/7.
//  Copyright © 2016年 DS-Team. All rights reserved.
//

import UIKit

class DemoVC3_View2: UIView, UITableViewDelegate, UITableViewDataSource {

//    var tableView = UITableView()
    // 定义block、有返回值
    var DemoVC3_View2ActionBlock : ((tableView: UITableView, indexPath: NSIndexPath, dataArray : NSArray) -> ())?
    
    var dataArray : [String] = ["DemoVC3_View2 第1行",
        "DemoVC3_View2 第2行",
        "DemoVC3_View2 第3行",
        "DemoVC3_View2 第4行",
        "DemoVC3_View2 第5行",
        "DemoVC3_View2 第6行",
        "DemoVC3_View2 第7行",
        "DemoVC3_View2 第8行"];
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        super.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    //MARK: - lazy
    lazy var tableView : UITableView = {
    
        let _tableView = UITableView(frame: CGRectMake(0, 0, BASCREEN_WIDTH, BAKSCREEN_HEIGHT), style: UITableViewStyle.Grouped)
        _tableView.delegate = self
        _tableView.dataSource = self
        _tableView.scrollEnabled = true

        _tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        _tableView.backgroundColor = UIColor.yellowColor()
        
        self.addSubview(_tableView)

//        let autoResizing : UIViewAutoresizing = [.FlexibleBottomMargin, .FlexibleLeftMargin, .FlexibleRightMargin, .FlexibleWidth]
//        _tableView.autoresizingMask = autoResizing
        return _tableView
    }()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.selectionStyle = .Blue
        
        cell.textLabel?.text = self.dataArray[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
         // 点击立刻取消该cell的选中状态
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if DemoVC3_View2ActionBlock != nil
        {
            DemoVC3_View2ActionBlock!(tableView: tableView, indexPath: indexPath, dataArray: dataArray)
        }
        
    }
    
}
