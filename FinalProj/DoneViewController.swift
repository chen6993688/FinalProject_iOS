//
//  DoneViewController.swift
//  FinalProj
//
//  Created by Zhe Chen on 6/10/2015.
//  Copyright (c) 2015 Zhe Chen. All rights reserved.
//

import UIKit

class DoneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func back(sender: AnyObject) {
        
        dispatch_async(dispatch_get_main_queue())
            {
                var Storyboard = UIStoryboard(name: "Main", bundle: nil )
                var Main : UIViewController = Storyboard.instantiateViewControllerWithIdentifier("navi") as! UIViewController
                
                self.presentViewController(Main, animated: true, completion: nil)
                
        }

    }
    
}
