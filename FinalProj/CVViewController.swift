//
//  CVViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class CVViewController: UIViewController {

    
    
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
    
    var ifscore: String!
    
    var testName: String?
    var testYear: String?
    var testScore: String?
    
    var interest: String!
    
    var phd: String!
    var jointPHD: String?
    var masCourse: String?
    var masResearch: String?
    var other: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dv = segue.destinationViewController as! CheckViewController
        
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
        
        dv.ifscore = self.ifscore
        dv.testName = self.testName
        dv.testYear = self.testYear
        dv.testScore = self.testScore
        
        dv.interest = self.interest
        dv.phd = self.phd
        dv.jointPHD = self.jointPHD
        dv.masCourse = self.masCourse
        dv.masResearch = self.masResearch
        dv.other = self.other
        
        
    }

    


}
