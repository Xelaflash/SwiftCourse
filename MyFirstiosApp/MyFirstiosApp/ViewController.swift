//
//  ViewController.swift
//  MyFirstiosApp
//
//  Created by iFlash on 13/06/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImage(_ sender: Any) {
        if (imageView.image == #imageLiteral(resourceName: "Image1"))
        {
            imageView.image = #imageLiteral(resourceName: "Image2")
        }
        else if (imageView.image == #imageLiteral(resourceName: "Image2"))
        {
            imageView.image = #imageLiteral(resourceName: "Image3")
        }
        else if (imageView.image == #imageLiteral(resourceName: "Image3"))
        {
            imageView.image = #imageLiteral(resourceName: "Image4")
        }
        else
        {
            imageView.image = #imageLiteral(resourceName: "Image1")
        }
    }
}

