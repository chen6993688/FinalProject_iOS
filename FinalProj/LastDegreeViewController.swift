//
//  LastDegreeViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class LastDegreeViewController: UIViewController {

    
    @IBOutlet weak var NameOfDegree: UITextField!
    @IBOutlet weak var NameOfUniversity: UITextField!
    @IBOutlet weak var RankInClass: UITextField!
    @IBOutlet weak var ClassSize: UITextField!
    @IBOutlet weak var GPA: UITextField!
    
    
    var secondName: String!
    var givenName: String!
    var emailAdd: String!
    var phone: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dv = segue.destinationViewController as! CurrentDegreeViewController
        
        dv.secondName = self.secondName
        dv.givenName = self.givenName
        dv.emailAdd = self.emailAdd
        dv.phone = self.phone
        
        dv.lastDegree = self.NameOfDegree.text
        dv.lastUni = self.NameOfUniversity.text
        dv.lastRankInClass = self.RankInClass.text
        dv.lastClassSize = self.ClassSize.text
        dv.lastGPA = self.GPA.text
        
    }

}
