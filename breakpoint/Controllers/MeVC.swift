//
//  MeVC.swift
//  breakpoint
//
//  Created by iosdev on 30.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit

class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emailLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
    }
    
}
