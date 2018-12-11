//
//  ProjectDataSource.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

class ProjectDataSource: NSObject, UITableViewDataSource {
    var projects = Bundle.main.decode([Project].self, from: "projects.json")
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let project = projects[indexPath.row]
        cell.textLabel?.attributedText = project.attributeTitle
        return cell
    }
    
    func project(at index: Int) -> Project {
        return projects[index]
    }
}
