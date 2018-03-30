//
//  FeedCell.swift
//  breakpoint
//
//  Created by iosdev on 30.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        print("Cell Config")
        print("email: ", email)
        print("content: ", content)
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLabel.text = content
    }
}
