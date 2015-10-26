//
//  LanguageViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {

   
    @IBOutlet weak var IfScore: UISegmentedControl!
    
    @IBOutlet weak var TestName: UITextField!
    @IBOutlet weak var TestYear: UITextField!
    @IBOutlet weak var Score: UITextField!
    
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
    
    var ifscholar: String!
    
    var scholarName1: String?
    var scholarYear1: String?
    var scholarName2: String?
    var scholarYear2: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dv = segue.destinationViewController as! InterestViewController
        
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
        
        dv.ifscholar = self.ifscholar
        dv.scholarName1 = self.scholarName1
        dv.scholarYear1 = self.scholarYear1
        dv.scholarName2 = self.scholarName2
        dv.scholarYear2 = self.scholarYear2
        
        dv.ifscore = IfScore.titleForSegmentAtIndex(IfScore.selectedSegmentIndex)
        dv.testName = self.TestName.text
        dv.testYear = self.TestYear.text
        dv.testScore = self.Score.text

        
    }
    

}
