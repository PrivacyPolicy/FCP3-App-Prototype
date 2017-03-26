//
//  ScheduleViewController.swift
//  FCP3Prototype
//
//  Created by Jessie Pullaro on 3/26/17.
//  Copyright © 2017 Gabriel Hutchison. All rights reserved.
//

import UIKit

class ScheduleViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        var cell = self.view.viewWithTag(1) as! UITableViewCell?;
//        cell.
//        cell.actin
//        self.tableView.estimatedRowHeight = 80
//        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.rowHeight = 120
        
        self.tableView.setNeedsLayout()
        self.tableView.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let remindMe = UITableViewRowAction(style: .normal, title: "Remove From My Schedule") {action, index in
            print("YOU TAPPED ME YOU DIRTY MONGROL")
        }
        remindMe.backgroundColor = UIColor.blue
        
//        let kill = UITableViewRowAction(style: .normal, title: "Kill me") {action, index in
//            print("You better kill yourself in the music the moment you want it you better never let it go")
//        }
//        kill.backgroundColor = UIColor.red
        
        return [remindMe]
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // the cells you would like the actions to appear needs to be editable
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        // you need to implement this method too or you can't swipe to display the actions
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = UITableViewCell();
        var cell = tableView.dequeueReusableCell(withIdentifier: "YOUTUBE", for: indexPath)
        cell.textLabel?.text = "HI I EXIST"
        cell.detailTextLabel?.text = "HIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HIHIHI THERE HI"
//        extLabel.lineBreakMode = .ByWordWrapping // or NSLineBreakMode.ByWordWrapping
//        textLabel.numberOfLines = 0
        cell.detailTextLabel?.lineBreakMode = .byWordWrapping
        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
