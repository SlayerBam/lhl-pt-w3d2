//
//  AddCaptainViewController.swift
//  CustomTableViewCellsDemo
//
//  Created by David Mills on 2017-04-20.
//  Copyright © 2017 David Mills. All rights reserved.
//

import UIKit

protocol CaptainsDelegate {
    func saveCaptain(name: String)
}

class AddCaptainViewController: UIViewController {
    
    @IBOutlet var nameTextField : UITextField!
    var delegate : CaptainsDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: UIButton) {
        let newCaptainsName = nameTextField.text!
        
        // TODO: Save captains name
        delegate?.saveCaptain(name: newCaptainsName)
        
        dismiss(animated: true, completion: nil)
    }

}
