//
//  CurrentDegreeViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 30/09/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class CurrentDegreeViewController: UIViewController {

    
    @IBOutlet weak var NameOfDegree: UITextField!
    @IBOutlet weak var NameOfUniversity: UITextField!
    @IBOutlet weak var CompletionDate: UITextField!
    @IBOutlet weak var RankInClass: UITextField!
    @IBOutlet weak var ClassSize: UITextField!
    @IBOutlet weak var GPA: UITextField!
    
    var secondName: String!
    var givenName: String!
    var emailAdd: String!
    var phone: String!
    
    var lastDegree: String!
    var lastUni: String!
    var lastRankInClass: String!
    var lastClassSize: String!
    var lastGPA: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dv = segue.destinationViewController as! ScholarshipViewController
        
        dv.secondName = self.secondName
        dv.givenName = self.givenName
        dv.emailAdd = self.emailAdd
        dv.phone = self.phone
        
        dv.lastDegree = self.lastDegree
        dv.lastUni = self.lastUni
        dv.lastRankInClass = self.lastRankInClass
        dv.lastClassSize = self.lastClassSize
        dv.lastGPA = self.lastGPA
        
        dv.currentDegree = self.NameOfDegree.text
        dv.currrentUniversity = self.NameOfUniversity.text
        dv.completionDate = self.CompletionDate.text
        dv.currentRankInClass = self.RankInClass.text
        dv.currentClassSize = self.ClassSize.text
        dv.currentGPA = self.GPA.text
        
    }



}
