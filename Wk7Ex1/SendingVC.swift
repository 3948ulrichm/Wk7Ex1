//
//  SendingVC.swift
//  Wk7Ex1
//
//  Created by Michael Ulrich on 10/15/17.
//  Copyright © 2017 Michael Ulrich. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(Data: String)
    }

class SendingVC: UIViewController {
    
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnSendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if dataEntryTextField.text != "" {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(Data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
