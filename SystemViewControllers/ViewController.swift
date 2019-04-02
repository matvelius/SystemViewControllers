//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Matvey on 4/1/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func optionTapped(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
            
        // SHARE
        case 0:
            
            guard let image = imageView.image else { return }
            
            let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            
            activityController.popoverPresentationController?.sourceView = sender as? UIView
            
            present(activityController, animated: true, completion: nil)
            
        // SAFARI
        case 1: print("1")
            
        // CAMERA
        case 2: print("2")
            
        // EMAIL
        case 3: print("3")
            
        default: break
        }
    }
    

}

