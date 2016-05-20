//
//  GlobalSplitViewController.swift
//  SplitViewExample
//
//  Created by Ishan Weerasooriya on 5/21/16.
//  Copyright © 2016 Ishan Weerasooriya. All rights reserved.
//

import UIKit

class GlobalSplitViewController: UISplitViewController, UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool{
        return true
    }


}
