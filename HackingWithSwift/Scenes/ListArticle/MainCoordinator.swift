//
//  MainCoordinator.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instanciate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func show(_ project: Project) {
        let detailVC = DetailViewController.instanciate()
        detailVC.project = project
        navigationController.pushViewController(detailVC, animated: true)
    }
}
