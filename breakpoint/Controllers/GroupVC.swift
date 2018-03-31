//
//  SecondViewController.swift
//  breakpoint
//
//  Created by iosdev on 29.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit

class GroupVC: UIViewController {

    @IBOutlet weak var groupTableView: UITableView!
    
    var groupArray = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupTableView.dataSource = self
        groupTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.REF_GROUPS.observe(.value) {
            (snapshot) in
            DataService.instance.getAllGroups { (returnedGroupsArray) in
                print(returnedGroupsArray)
                self.groupArray = returnedGroupsArray
                self.groupTableView.reloadData()
            }
        }
    }
}

extension GroupVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupTableView.dequeueReusableCell(withIdentifier: "groupCell") as? GroupCell else {
            return UITableViewCell()
        }
        let group = groupArray[indexPath.row]
        cell.configureCell(title: group.groupTitle, description: group.groupDesc, memberCount: group.memberCount)
        return cell
    }
    
    
}

