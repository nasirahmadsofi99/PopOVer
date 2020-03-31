//
//  ViewController.swift
//  PopOver
//
//  Created by Deftsoft on 07/08/19.
//  Copyright © 2019 Deftsoft. All rights reserved.
//

import UIKit

var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapButtonAction(_ sender: UIButton) {
      let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PopOverVC") as! PopOverVC
        var height = 50 * 5
        
        if array.count < 5 {
            height = 50 * array.count
        }
     vc.modalPresentationStyle = .popover
     vc.preferredContentSize = .init(width: 300, height: height)
     let popOver = vc.popoverPresentationController
    popOver?.delegate = self
    popOver?.permittedArrowDirections = .up
    popOver?.sourceView = sender
    popOver?.sourceRect = sender.bounds
    self.present(vc, animated: true, completion: nil)
        
    }
}

extension ViewController:UIPopoverPresentationControllerDelegate{
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        
        return true
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}

