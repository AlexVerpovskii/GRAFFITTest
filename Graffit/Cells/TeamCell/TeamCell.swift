//
//  TeamCell.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import UIKit
import TableKit
import SDWebImage

final class TeamCell: UITableViewCell, ConfigurableCell {
    typealias CellData = TeamCellModel
    
    @IBOutlet private weak var coverView: UIView!
    @IBOutlet private weak var nameTeam: UILabel!
    @IBOutlet private weak var avatarImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 34/255, green: 238/255, blue: 255/255, alpha: 1)
        selectionStyle = .none
        coverView.backgroundColor = UIColor(red: 34/255, green: 101/255, blue: 166/255, alpha: 1)
        coverView.layer.cornerRadius = 14
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
    }

    func configure(with data: CellData) {
        nameTeam.text = data.name
    }
    
}
