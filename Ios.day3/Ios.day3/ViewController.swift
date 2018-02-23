//
//  ViewController.swift
//  Ios.day3
//
//  Created by MacStudent on 2018-02-22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myTextField: UITextField!
    
    
    @IBAction func mySwitchTapped(_ sender: UISwitch)
    
    {
        if sender.isOn
        {
            myTextField.text = "The Switch is On"
            myImage.image = UIImage(named: "lion.png")
            
        }
        else
        {
            myTextField.text = "The Switch is Off"
            myImage.image = UIImage(named: "gorilla.png")
            
        }
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton)
    {
        if mySwitch.isOn
        {
            myTextField.text = "The Switch is Off"
            mySwitch.setOn(false, animated: true)
        }
        else
        {
            
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider)
    {
        myTextField.text = String(Int(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

