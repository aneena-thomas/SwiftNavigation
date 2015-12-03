//
//  pickerview.swift
//  SwiftNav
//
//  Created by Aneena Susan Thomas on 04/11/15.
//  Copyright © 2015 Aneena Susan Thomas. All rights reserved.
//

import UIKit

class pickerview: UIViewController , UIPickerViewDelegate, UITextFieldDelegate{

    @IBOutlet weak var txtfld: UITextField!
    @IBOutlet weak var pckr: UIPickerView!
    
    
    var arr1 = ["Cat One", "Cat Two", "Cat Three"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pckr.delegate=self
        txtfld.delegate=self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        return arr1.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr1[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        txtfld.text = arr1[row]
        pckr.hidden = true
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        pckr.hidden = false
        return false
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
