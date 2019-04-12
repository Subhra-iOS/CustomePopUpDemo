//
//  ARCPopOverViewController.swift
//  CustomePopUpDemo
//
//  Created by Subhra Roy on 12/04/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import Foundation
import UIKit

class ARCPopOverViewController: UIViewController, UIAdaptivePresentationControllerDelegate {
    
    @IBOutlet weak var infoLabel: UILabel!
    private var message : String?
    private var messageFont : UIFont?
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
        self.infoLabel.text = self.message
        self.infoLabel.font = self.messageFont
    }
    
    override  func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
        
    func setMessage(_ message:String) {
        self.message = message
    }

     func setMessageFont(_ messageFont:UIFont) {
        self.messageFont = messageFont
    }
    
}
