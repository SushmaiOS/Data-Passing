//
//  ViewController.swift
//  DataPassing
//
//  Created by Meheboob MacBook on 9/28/18.
//  Copyright © 2018 Namsha Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    
    @IBAction func myButton(_ sender: Any) {
        self.performSegue(withIdentifier: "Viewconroller2", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppManager.sharedInstance.nameString = "iOS"
        
       // var obh = AppManager()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        print(AppManager.sharedInstance.nameString)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Viewconroller2
        vc.getStringFromPrevVC(getString: self.myTextField.text!)
        
    }
}

