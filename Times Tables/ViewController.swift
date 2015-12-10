//
//  ViewController.swift
//  Times Tables
//
//  Created by diego prats on 12/10/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var numberToBeMultipliedLabel: UILabel!
    
    //Model
  

    override func viewDidLoad() {
        super.viewDidLoad()
        numberToBeMultipliedLabel.text = String(Int(sliderValue.value))
    
    }

    @IBAction func updateSlider(sender: AnyObject) {
        numberToBeMultipliedLabel.text = String(Int(sliderValue.value))
        table.reloadData()
        

    }
    
    //1. number of rows
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

     //2. what the cells look like
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value)

        cell.textLabel?.text = String(timesTable * indexPath.row)
        return cell
        
    }
    
   
   

}

