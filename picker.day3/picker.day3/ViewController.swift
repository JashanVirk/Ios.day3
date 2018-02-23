//
//  ViewController.swift
//  picker.day3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
   

    @IBOutlet weak var myCountryPickerView: UIPickerView!
    
    var countryNameList = ["India","Canada","USA","UK","Pakistan","France","Sri Lanka","Mexico","Bhutan","China","Singapore","South Africa"]
    var Names = ["Jas","Nav","David","akash","Allu","Arjun","Yo Yo"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myCountryPickerView.delegate = self
        myCountryPickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return countryNameList.count
            
        }
        else
        {
            return Names.count
        }
    }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
            return countryNameList[row]
        }
        else
        {
            return Names[row]
        }
        }
    
    
}

