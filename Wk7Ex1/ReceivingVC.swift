//
//  ReceivingVC.swift
//  Wk7Ex1
//
//  Created by Michael Ulrich on 10/15/17.
//  Copyright © 2017 Michael Ulrich. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingTextField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func userDidEnterData(Data: String) {
        receivingTextField.text = Data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

