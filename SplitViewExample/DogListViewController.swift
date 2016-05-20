//
//  DogListViewController.swift
//  SplitViewExample
//
//  Created by Ishan Weerasooriya on 5/20/16.
//  Copyright © 2016 Ishan Weerasooriya. All rights reserved.
//

import UIKit

class DogListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var dogsArray = [Dog]()
    
    override func viewDidLoad() {
        
        self.splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.AllVisible
        createDogs()
        
    }
    
    
    func createDogs() {
        
        // dog1
        let dog1 = Dog(name: "Lazy", age: 3, furColor: "Brown")
        dogsArray.append(dog1)
        
        // dog2
        let dog2 = Dog(name: "Pits", age: 5, furColor: "White")
        dogsArray.append(dog2)
        
        // dog3
        let dog3 = Dog(name: "Dolly", age: 7, furColor: "Black")
        dogsArray.append(dog3)
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogsArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let dog = dogsArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel?.text = dog.name
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let dog = dogsArray[indexPath.row]
        self.performSegueWithIdentifier("showDogInfo", sender: dog)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDogInfo" {
        
            let dogDetailVC = segue.destinationViewController as! DogDetailViewController
            dogDetailVC.dog = sender as! Dog
        }
    }
    

}
