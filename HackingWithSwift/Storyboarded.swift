//
//  Storyboarded.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instanciate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instanciate() -> Self {
        let id = String(describing: self)
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
