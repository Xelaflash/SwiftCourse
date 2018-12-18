//
//  RoundButton.swift
//  Teki
//
//  Created by iFlash on 14/12/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

@IBDesignable class MyButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
