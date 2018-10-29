//
//  Viewconroller2.swift
//  DataPassing
//
//  Created by Meheboob MacBook on 9/28/18.
//  Copyright © 2018 Namsha Tech. All rights reserved.
//

import UIKit

class Viewconroller2: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var getPrevStr : String = String()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

       
        AppManager.sharedInstance.nameString = "Sushma"
     self.textLabel.text = getPrevStr
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var sliderClick: UISlider!
    
    @IBAction func sliderMove(_ sender: UISlider) {
        
        self.textLabel.text = String(format: "%.2f", sender.value)
    }
    func getStringFromPrevVC(getString : String)  {
        
        
        
        self.getPrevStr = getString
        print(getString)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stepClick(_ sender: UIStepper) {
        self.textLabel.text = String(format: "%.2f", sender.value)
        
    }
    
    @IBAction func segmentClick(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            self.view.backgroundColor = .red
            
        }
       else if sender.selectedSegmentIndex == 1{
            self.view.backgroundColor = .green
            
        }
    }
    @IBAction func switchClick(_ sender: UISwitch) {
        if sender.isOn{
            self.textLabel.text = "Bulb On"
        }
       else{
            self.textLabel.text = "Bulb Off"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        print(AppManager.sharedInstance.nameString)
    }
}
