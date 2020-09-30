//
//  ViewController.swift
//  AlertFunS2
//
//  Created by Gina Sprint on 9/28/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func echoBackPressed(_ sender: UIButton) {
        if let text = textField.text {
            print(text)
            
            // MARK: - Alerts
            // show an alert to the user when you want to inform them of something or get a quick choice
            // two styles for alerts
            // actionSheet: use when the user expects the alert to show up... (e.g. the user wants to delete something and the app wants a confirmation)
            // alert: use when the user doesn't expect the alert to show up... (e.g. perhaps something unexpected happened like an error)
            // use an UIAlertController to setup and present an alert
            let alertController = UIAlertController(title: "Echo Back", message: text, preferredStyle: .alert)
            // we need to add at least one UIAlertAction
            alertController.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (action) -> Void in
                print("Okay pressed")
                self.textField.text = ""
            }))
            // now we show the alert with present()
            present(alertController, animated: true, completion: { () -> Void in
                print("Alert just presented")
            })
            
        }
    }
    
    // task: in IB, add a UITextField that is as wide as the iPhone SE
    // ignore the layout warnings....
    // add a button below that says "Echo Back"
    // wire up the connections for an IBOutlet and an IBAction in ViewController
    // print out a log message proving your IBAction is set up
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

