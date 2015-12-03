//
//  ViewController.swift
//  SwiftNav
//
//  Created by Aneena Susan Thomas on 02/11/15.
//  Copyright © 2015 Aneena Susan Thomas. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITextFieldDelegate {

    var movevalue:String!
    var movevalue1:String!
    var movevalue2:String!
    @IBOutlet weak var usrnmetxtfld: UITextField!
    
    @IBOutlet weak var passwrdtxtfld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      usrnmetxtfld.delegate=self
        passwrdtxtfld.delegate=self

       // self.navigationController!.navigationBar.topItem!.title = "Login"
       
        navigationController?.navigationBar.barTintColor=UIColor .blueColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(animated: Bool) {
         self.navigationController!.navigationBar.topItem!.title = "Login"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func signupbtn(sender: AnyObject)
    {
        self.performSegueWithIdentifier("Registration", sender: AnyObject?())

        
    }

    @IBAction func lgnbtn(sender: AnyObject)
    {
   
        
        if usrnmetxtfld.text==movevalue && passwrdtxtfld.text==movevalue1

        {
            self.performSegueWithIdentifier("Detailview", sender: AnyObject?())
       }
       else if (usrnmetxtfld.text=="" && passwrdtxtfld.text=="")
        {
            
            let refreshAlert3 = UIAlertController(title: "Refresh", message: "Enter Username and Password", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert3.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                
            }))
            
            
            
            presentViewController(refreshAlert3, animated: true, completion: nil)
        }
        else if !(usrnmetxtfld.text==movevalue && passwrdtxtfld.text==movevalue1)
        {
            passwrdtxtfld.text=""
            
            let refreshAlert = UIAlertController(title: "Refresh", message: "Username or Password was Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
               
            }))
            
        
            
            presentViewController(refreshAlert, animated: true, completion: nil)
        }
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
   
   
  
}

