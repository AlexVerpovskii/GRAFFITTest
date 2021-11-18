//
//  MenuLabel.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation
import UIKit

final class MenuLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    private func setUp() {
        font = UIFont(name: Constants.Font.font.rawValue, size: 65.0)
        text = Constants.Tittle.manu.rawValue
        textColor = UIColor(red: 242/255, green: 237/255, blue: 189/255, alpha: 1)
    }

}
