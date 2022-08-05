//
//  MedalCell.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import UIKit

class MedalCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var medalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    static var identifier: String { //Cell Identifier
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = .appWhiteColor
        self.bgView.backgroundColor = .appWhiteColor
        
        self.medalImageView.contentMode = .scaleAspectFit
        
        self.nameLabel.setUpLabel(font: .regular16, textColor: .appBlackColor, alignment: .center)
        self.nameLabel.numberOfLines = 0
        self.nameLabel.lineBreakMode = .byWordWrapping
        
        self.descriptionLabel.setUpLabel(font: .regular12, textColor: .appLightGrayColor, alignment: .center)
        
    }

    func configureCell(medal:MedalItems) {
        self.medalImageView.image = UIImage(named: medal.image)
        self.nameLabel.text = medal.medalName
        self.descriptionLabel.text = medal.description
    }
}
