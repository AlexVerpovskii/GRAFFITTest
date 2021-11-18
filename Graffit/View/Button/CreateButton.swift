//
//  CreateButton.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation
import UIKit
import SnapKit

final class CreateButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    private func setUp() {
        titleLabel?.font = UIFont(name: Constants.Font.font.rawValue, size: 30.0)
        titleLabel?.textColor = .white
        layer.cornerRadius = 15
        titleLabel?.textAlignment = .center
        titleLabel?.numberOfLines = 0
        backgroundColor = UIColor(red: 255/255, green: 192/255, blue: 162/255, alpha: 0.4)
    }
}

