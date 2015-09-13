//
//  TableViewController.swift
//  LeftMenuDemo
//
//  Created by qingjie on 8/31/15.
//  Copyright (c) 2015 qingjie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func menuButtonTouched(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "menuButtonTouched",object:self))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
}
