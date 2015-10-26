//
//  CheckViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit
import Parse
import Bolts

class CheckViewController: UIViewController {

    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var FamilyNameText: UILabel!
    @IBOutlet weak var FirstNameText: UILabel!
    @IBOutlet weak var EmailText: UILabel!
    @IBOutlet weak var PhoneText: UILabel!
    
    @IBOutlet weak var LastDegreeText: UILabel!
    @IBOutlet weak var LastUniText: UILabel!
    @IBOutlet weak var LastRankInClassText: UILabel!
    @IBOutlet weak var LastClassSizeText: UILabel!
    @IBOutlet weak var LastGPAText: UILabel!
    
    @IBOutlet weak var CurrentDegreeText: UILabel!
    @IBOutlet weak var CurrentUniText: UILabel!
    @IBOutlet weak var CurrentCompletionDate: UILabel!
    @IBOutlet weak var CurrentRankInClassText: UILabel!
    @IBOutlet weak var CurrentClassSizeText: UILabel!
    @IBOutlet weak var CurrentGPAText: UILabel!
    
    @IBOutlet weak var IfScholarText: UILabel!
    @IBOutlet weak var Name1Text: UILabel!
    @IBOutlet weak var Year1Text: UILabel!
    @IBOutlet weak var Name2Text: UILabel!
    @IBOutlet weak var Year2Text: UILabel!
    
    @IBOutlet weak var IfLanguageText: UILabel!
    @IBOutlet weak var TestNameText: UILabel!
    @IBOutlet weak var TestYearText: UILabel!
    @IBOutlet weak var TestScoreText: UILabel!
    
    @IBOutlet weak var InterestText: UITextView!
    @IBOutlet weak var CourseText: UITextView!
    
    
    
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
    
    var scholarName1: String!
    var scholarYear1: String!
    var scholarName2: String!
    var scholarYear2: String!
    
    var ifscore: String!
    
    var testName: String!
    var testYear: String!
    var testScore: String!
    
    var interest: String!
    var course = ""
    var phd: String!
    var jointPHD: String?
    var masCourse: String?
    var masResearch: String?
    var other: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize.height = 1200
        
        self.FamilyNameText.text = secondName
        self.FirstNameText.text = givenName
        self.EmailText.text = emailAdd
        self.PhoneText.text = phone
        
        self.LastDegreeText.text = lastDegree
        self.LastUniText.text = lastUni
        self.LastRankInClassText.text = lastRankInClass
        self.LastClassSizeText.text = lastClassSize
        self.LastGPAText.text = lastGPA
        
        self.CurrentDegreeText.text = currentDegree
        self.CurrentUniText.text = currrentUniversity
        self.CurrentCompletionDate.text = completionDate
        self.CurrentRankInClassText.text = currentRankInClass
        self.CurrentClassSizeText.text = currentClassSize
        self.CurrentGPAText.text = currentGPA
        
        self.IfScholarText.text = ifscholar
        if ifscholar == "NO"{
            self.Name1Text.text = "No been awarded scholar yet"
            self.Year1Text.text = "//"
            self.Name2Text.text = "//"
            self.Year2Text.text = "//"
        }
        if ifscholar == "YES"{
            self.Name1Text.text = scholarName1
            self.Year1Text.text = scholarYear1
            self.Name2Text.text = scholarName2
            self.Year2Text.text = scholarYear2
        }
        
        
        self.IfLanguageText.text = ifscore
        if ifscore == "NO"{
            self.TestNameText.text = "//"
            self.TestYearText.text = "//"
            self.TestScoreText.text = "//"
        }
        if ifscore == "YES"{
            self.TestNameText.text = testName
            self.TestYearText.text = testYear
            self.TestScoreText.text = testScore
        }
        
    
        self.InterestText.text = interest
        
        
        if phd == "YES"{
            course += "PhD"
        }
        if jointPHD == "YES"{
            course += ", joint PhD"
        }
        if masCourse == "YES"{
            course += ", master course"
        }
        if masResearch == "YES"{
            course += ", master research"
        }
        if other == "YES"{
            course += " and other"
        }
        self.CourseText.text = course
        
    }
    
    
    @IBAction func upload(sender: AnyObject) {
        var toload = PFObject(className: "form")
        
        toload["familyname"] = secondName
        toload["firstname"] = givenName
        toload["email"] = emailAdd
        toload["phone"] = phone
        
        toload["lastdegree"] = lastDegree
        toload["lastuni"] = lastUni
        toload["lastrankinclass"] = lastRankInClass
        toload["lastclasssize"] = lastClassSize
        toload["lastgpa"] = lastGPA
        
        toload["currentdegree"] = currentDegree
        toload["currentuni"] = currrentUniversity
        toload["currentcomplet"] = completionDate
        toload["currentrank"] = currentRankInClass
        toload["currentclasssize"] = currentClassSize
        toload["currentgpa"] = currentGPA
        
        toload["ifscholar"] = ifscholar
        if ifscholar == "YES"{
            toload["scholarname"] = scholarName1
            toload["scholaryear"] = scholarYear1
            toload["scholarname2"] = scholarName2
            toload["scholaryear2"] = scholarYear2
        }
        if ifscholar == "NO"{
            toload["scholarname"] = ""
            toload["scholaryear"] = ""
            toload["scholarname2"] = ""
            toload["scholaryear2"] = ""
        }
        
        
        toload["iftest"] = ifscore
        if ifscore == "YES"{
            toload["testname"] = testName
            toload["testyear"] = testYear
            toload["testscore"] = testScore
        }
        if ifscore == "NO"{
            toload["testname"] = ""
            toload["testyear"] = ""
            toload["testscore"] = ""
            
        }
        
        toload["interest"] = interest
        toload["course"] = course
        
        toload.saveInBackgroundWithBlock{ (success:Bool ,error:NSError?) -> Void in
            
            if error == nil
            {
                
                println("Updated")
                var myAlert = UIAlertController(title: "Congratulation!", message: "Your information is successfully updated", preferredStyle: UIAlertControllerStyle.Alert);
                
                let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action in self.dismissViewControllerAnimated(true, completion: nil)}
                
                myAlert.addAction(okAction);
                self.presentViewController(myAlert, animated: true, completion: nil);
                
                
            }
            else {
                var myAlert = UIAlertController(title: "Error", message: "Cant update", preferredStyle: UIAlertControllerStyle.Alert);
                
                let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler:nil);
                
                myAlert.addAction(okAction);
                self.presentViewController(myAlert, animated: true, completion: nil);
                
                
            }
            
        }

    }
    

    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
