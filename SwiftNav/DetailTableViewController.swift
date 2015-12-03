//
//  DetailTableViewController.swift
//  SwiftNav
//
//  Created by Aneena Susan Thomas on 02/11/15.
//  Copyright © 2015 Aneena Susan Thomas. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var img=[UIImage(named: "img1"),UIImage(named: "img2"),UIImage(named: "img3"),UIImage(named: "img4"),UIImage(named: "img5"),UIImage(named: "img6")]
    
    var lbl=["anu","alen","ani","aisha","ammu","achu"]
    
var valueToPass:String!
    var valueimage:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
//navigationController?.navigationItem.title="Detail View"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    override func viewWillAppear(animated: Bool)
    {
        navigationItem.title="Items"
        //navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addTapped")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: "logout")
    
    }
    
    func logout()
    {
    exit(1)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return img.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let cellIdentifier="detailTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)as!detailTableViewCell
        let img1=img[indexPath.row]
        let lbl1=lbl[indexPath.row]
        cell.detailimg.image=img1
        cell.detaillbl.text=lbl1

        return cell
    }
   
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//       
////        let indexPath = tableView.indexPathForSelectedRow!;
////        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
////        
////        valueToPass = currentCell.detailTextLabel.te
////        self.performSegueWithIdentifier("showdetail", sender: AnyObject?())
//        
//        
//        
//        print("You selected cell #\(indexPath.row)!")
//        
//        // Get Cell Label text here and storing it to the variable
//        let indexPathVal: NSIndexPath = tableView.indexPathForSelectedRow!
//        print("\(indexPathVal)")
//        let currentCell = tableView.cellForRowAtIndexPath(indexPathVal) as! detailTableViewCell!;
//        print("\(currentCell)")
//        print("\(currentCell.detaillbl?.text!)")
//        //Storing the data to a string from the selected cell
//        valueToPass = currentCell.detaillbl.text!
//        valueimage=currentCell.detailimg.image!
//        print(valueToPass)
//        
//          self.performSegueWithIdentifier("showdetail", sender: AnyObject?())
//    }
   
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let indexPathVal: NSIndexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRowAtIndexPath(indexPathVal) as! detailTableViewCell!;
        valueToPass = currentCell.detaillbl.text!
        valueimage=currentCell.detailimg.image!
        print(valueToPass)

         if segue.identifier == "showdetail"{
        
        
        let controller = segue.destinationViewController as! showdetailViewController
         
        //Sending the data here
        controller.passedValue = valueToPass
            controller.passedimage=valueimage
       
    }
    }

}
