//
//  showdetailViewController.swift
//  SwiftNav
//
//  Created by Aneena Susan Thomas on 03/11/15.
//  Copyright © 2015 Aneena Susan Thomas. All rights reserved.
//

import UIKit

class showdetailViewController: UIViewController {

     var passedValue:String!
    var passedimage:UIImage!
    
    @IBOutlet weak var showimg: UIImageView!
    @IBOutlet weak var showlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
     showimg.image=passedimage
    showlbl.text=passedValue
    // showlbl.text=arr1[0]
        
        
     
        
        
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        navigationItem.title="Detail View"
    }
    @IBAction func pickerview(sender: AnyObject) {
        
        self.performSegueWithIdentifier("pickershow", sender: AnyObject?())
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
