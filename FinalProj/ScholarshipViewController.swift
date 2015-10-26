//
//  ScholarshipViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class ScholarshipViewController: UIViewController{

    
    @IBOutlet weak var Scholar: UISegmentedControl!
    
    @IBOutlet weak var Name1: UITextField!
    @IBOutlet weak var Year1: UITextField!
    
    @IBOutlet weak var Name2: UITextField!
    @IBOutlet weak var Year2: UITextField!
    
    var secondName: String!
    var givenName: String!
    var emailAdd: String!
    var phone: String!
    
    var lastDegree: String!
    var lastUni: String!
    var lastRankInClass: String!
    var lastClassSize: String!
    var lastGPA: String!
    
    var currentDegree: String!
    var currrentUniversity: String!
    var completionDate: String!
    var currentRankInClass: String!
    var currentClassSize: String!
    var currentGPA: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dv = segue.destinationViewController as! LanguageViewController
        
        dv.secondName = self.secondName
        dv.givenName = self.givenName
        dv.emailAdd = self.emailAdd
        dv.phone = self.phone
        
        dv.lastDegree = self.lastDegree
        dv.lastUni = self.lastUni
        dv.lastRankInClass = self.lastRankInClass
        dv.lastClassSize = self.lastClassSize
        dv.lastGPA = self.lastGPA
        
        dv.currentDegree = self.currentDegree
        dv.currrentUniversity = self.currrentUniversity
        dv.completionDate = self.completionDate
        dv.currentRankInClass = self.currentRankInClass
        dv.currentClassSize = self.currentClassSize
        dv.currentGPA = self.currentGPA
        
        dv.ifscholar = Scholar.titleForSegmentAtIndex(Scholar.selectedSegmentIndex)
        dv.scholarName1 = self.Name1.text
        dv.scholarYear1 = self.Year1.text
        dv.scholarName2 = self.Name2.text
        dv.scholarYear2 = self.Year2.text
    
    }

    


}
