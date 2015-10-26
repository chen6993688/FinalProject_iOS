//
//  BasicViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {

    
    @IBOutlet weak var FamilyName: UITextField!
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var PhoneNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if FamilyName.text == "" || FirstName.text == "" || Email.text == "" || PhoneNumber.text == ""{
            
            var alert = UIAlertController(title: "Alert", message: "All field must be filled", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }

        
        let dv = segue.destinationViewController as! LastDegreeViewController
        
        dv.secondName = self.FamilyName.text
        dv.givenName = self.FirstName.text
        dv.emailAdd = self.Email.text
        dv.phone = self.PhoneNumber.text
    }
   
    

}
