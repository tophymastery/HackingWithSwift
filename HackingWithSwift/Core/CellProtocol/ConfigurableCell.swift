//
//  ConfigurableCell.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/12/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

public protocol ConfigurableCell: ReusableCell {
    associatedtype T
    
    func configure(_ item: T, at indexPath: IndexPath)
}
