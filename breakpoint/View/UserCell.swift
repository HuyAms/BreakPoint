//
//  UserCell.swift
//  breakpoint
//
//  Created by iosdev on 31.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    var showing = false
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
        if selected {
            if showing == false {
                self.checkImage.isHidden = false
                showing = true
            } else {
                self.checkImage.isHidden = true
                showing = false
            }
        }
    }
    
    func configureCell(profileImage: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        if isSelected {
            checkImage.isHidden = false
        } else {
            checkImage.isHidden = true
        }
        
    }

}
