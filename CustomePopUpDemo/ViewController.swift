//
//  ViewController.swift
//  CustomePopUpDemo
//
//  Created by Subhra Roy on 12/04/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAdaptivePresentationControllerDelegate {

    @IBOutlet weak var actionBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    /*@IBAction func didTapOnActionBtn(_ sender: Any) {
        
        let popOverAlert : ARCPopOverViewController = ARCPopOverViewController(nibName: "ARCPopOverViewController", bundle: nil)
        popOverAlert.modalPresentationStyle = .popover
        popOverAlert.preferredContentSize = CGSize(width: 200, height: 50)
        
        if let popover = popOverAlert.popoverPresentationController  {
            popover.sourceView = sender as? UIView
            if #available(iOSApplicationExtension 12.0, *) {
                if #available(iOS 12.0, *) {
                    popover.sourceRect = CGRect(x: 0, y: 0, width: (sender as AnyObject).frame.size.width, height: (sender as AnyObject).frame.size.height)
                } else {
                    // Fallback on earlier versions
                }
            } else {
                // Fallback on earlier versions
            };if #available(iOSApplicationExtension 12.0, *) {
                if #available(iOS 12.0, *) {
                    popover.sourceRect = CGRect(x: 0, y: 0, width: (sender as AnyObject).frame.size.width, height: (sender as AnyObject).frame.size.height)
                } else {
                    // Fallback on earlier versions
                }
            } else {
                // Fallback on earlier versions
            }
            popover.permittedArrowDirections = .up
            
        }
        
        self.present(popOverAlert, animated: true) {
            
        }
        
    }*/
    
    @IBAction func didTapOnActionBtn(_ sender: Any) {
        
        let button : UIButton = sender as! UIButton
        
        let popOverAlertViewController = ARCPopOverViewController(nibName: "ARCPopOverViewController", bundle: Bundle.main)
        
        popOverAlertViewController.modalPresentationStyle = UIModalPresentationStyle.popover
        popOverAlertViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
        
        // arrow color
        popOverAlertViewController.popoverPresentationController?.backgroundColor = UIColor(red: (223.0/255.0), green: (223.0/255.0), blue: (223.0/255.0), alpha: 1.0)
        
        popOverAlertViewController.setMessage("Please call your ARC service center and they will provide you with the ARC account number for your company.")
        
        popOverAlertViewController.popoverPresentationController?.sourceView = button 
         popOverAlertViewController.popoverPresentationController?.permittedArrowDirections = .up
        popOverAlertViewController.popoverPresentationController?.sourceRect = CGRect(x: 0.0, y: 0.0, width: button.frame.size.width, height: button.frame.size.height)
        popOverAlertViewController.preferredContentSize = CGSize(width: 250, height:70)
        popOverAlertViewController.presentationController?.delegate = self
        
        popOverAlertViewController.setMessageFont(UIFont.systemFont(ofSize: 12))
        
      
        present(popOverAlertViewController, animated: true, completion: nil)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
}

