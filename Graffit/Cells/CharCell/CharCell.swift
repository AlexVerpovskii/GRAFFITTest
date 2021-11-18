//
//  CharCell.swift
//  Graffit
//
//  Created by black on 18.11.2021.
//

import UIKit
import TableKit

final class CharCell: UITableViewCell, ConfigurableCell {
    typealias CellData = CharCellModel
    
    @IBOutlet private weak var coverView: UIView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var phraseLabel: UILabel!
    @IBOutlet private weak var weaponLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        coverView.layer.cornerRadius = 14
    }
    
    func configure(with data: CellData) {
        nameLabel.text = data.name
        phraseLabel.text = data.phrase
        weaponLabel.text = data.weapon
    }
}
