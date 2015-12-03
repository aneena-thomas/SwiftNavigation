//
//  RegistrationViewController.swift
//  
//
//  Created by Aneena Susan Thomas on 02/11/15.
//
//

import UIKit

class RegistrationViewController: UIViewController ,UITextFieldDelegate {

    
    
    var passbyvalue:String!
    var passbyvalue1:String!
    var passbyvalue2:String!
   
    @IBOutlet weak var usrtxtfld: UITextField!
    @IBOutlet weak var passtxtfld: UITextField!
    @IBOutlet weak var cnfrmpasstxtfld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        passbyvalue = usrtxtfld.text
        passbyvalue1 = passtxtfld.text
        usrtxtfld.delegate=self
        passtxtfld.delegate=self
       navigationController?.navigationBar.tintColor=UIColor .blackColor()
         //self.navigationController!.navigationBar.topItem!.title = "Registration"
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
         navigationItem.title = "Registration"
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func regstrbtn(sender: AnyObject)
    {
    
        passbyvalue = usrtxtfld.text
        passbyvalue1 = passtxtfld.text
        passbyvalue2 = cnfrmpasstxtfld.text
        if !(passtxtfld.text == cnfrmpasstxtfld.text)
        {
            
            cnfrmpasstxtfld.text=""
            
            let refreshAlert4 = UIAlertController(title: "Refresh", message: "Entered Password Doesnt match", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert4.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                
            }))
            
            
            
            presentViewController(refreshAlert4, animated: true, completion: nil)
            
            
            
            
        }
        passbyvalue = usrtxtfld.text
        passbyvalue1 = passtxtfld.text
        passbyvalue2 = cnfrmpasstxtfld.text
        


        self.performSegueWithIdentifier("ViewController", sender: AnyObject?())
        
                    let refreshAlert2 = UIAlertController(title: "Refresh", message: "Registered Successfully", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert2.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                
            }))
            
            
            
            presentViewController(refreshAlert2, animated: true, completion: nil)
       
        

        
        
        
   
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        if segue.identifier == "ViewController"{
            
            
            let controller1 = segue.destinationViewController as! ViewController
            
            //Sending the data here
            controller1.movevalue=passbyvalue
            controller1.movevalue1=passbyvalue1
            //controller1.movevalue2=cnfrmpasstxtfld.text
            
        }

        
    }
    

}
