//
//  Dog.swift
//  SplitViewExample
//
//  Created by Ishan Weerasooriya on 5/20/16.
//  Copyright © 2016 Ishan Weerasooriya. All rights reserved.
//

import Foundation

class Dog {
    
    var name: String = ""
    var age: Int = 0
    var furColor: String = ""
    
    init() {}
    
    init(name: String, age: Int, furColor: String) {
        self.name = name
        self.age = age
        self.furColor = furColor
    }
    
}
