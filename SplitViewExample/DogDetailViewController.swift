//
//  DogDetailViewController.swift
//  SplitViewExample
//
//  Created by Ishan Weerasooriya on 5/20/16.
//  Copyright © 2016 Ishan Weerasooriya. All rights reserved.
//

import UIKit

class DogDetailViewController: UIViewController {
    
    
    var dog = Dog()
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lblColor: UILabel!
    
    override func viewDidLoad() {
        
        lblName.text = dog.name
        lblAge.text = "\(dog.age)"
        lblColor.text = dog.furColor
    }

}
