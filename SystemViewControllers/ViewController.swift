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
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
        
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func photosButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func emailButtonTapped(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

