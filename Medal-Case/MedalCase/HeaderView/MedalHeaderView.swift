//
//  MedalHeaderView.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import UIKit

class MedalHeaderView: UICollectionReusableView {

    @IBOutlet weak var headerTitleLabel: UILabel!
    
    static var identifier : String { //Header Identifier
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.headerTitleLabel.setUpLabel(font: .regular14, textColor: .appSectionTitleColor, alignment: .left) //Setup label using extension
        self.backgroundColor = .appSectionBGColor // Set Header BGColor
    }
    
    func configureHeader(header:MedalCategory) {
        self.headerTitleLabel.text = header.name
    }
}
