//
//  SideMenuTableViewController.swift
//  LeftMenuDemo
//
//  Created by qingjie on 8/31/15.
//  Copyright (c) 2015 qingjie. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {
    
    var menuTitles:NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTitles = ["Tab","Table","Green"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = menuTitles.objectAtIndex(indexPath.row) as? String
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "didSelectRow", object: self, userInfo:["selectRow":indexPath.row]))
    }
    
    
}
