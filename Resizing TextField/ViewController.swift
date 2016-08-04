//
//  ViewController.swift
//  Resizing TextField
//
//  Created by Dylan Edwards on 8/3/16.
//  Copyright © 2016 Slinging Pixels Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    private var textFieldHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldHeight = textField.frame.height
        textField.addTarget(self, action: #selector(resizeTextField), forControlEvents: .EditingChanged)
    }

    internal func resizeTextField() {
        /// Calculate & resize width
        let myString: NSString = textField.text! as NSString
        let size: CGSize = myString.sizeWithAttributes([NSFontAttributeName: UIFont.systemFontOfSize(14.0)])
        let padding: CGFloat = 20.0
        let center = view.frame.width / 2
        let frameRect = CGRect(x: center - (size.width + padding) / 2, y: textField.frame.origin.y , width: size.width + padding, height: textFieldHeight)
        textField.frame = frameRect
    }

}

