//
//  BorderedButton.swift
//  coursera_swoosh
//
//  Created by Muhammad Hashim on 1/17/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderWidth = 2.0
    }

}
