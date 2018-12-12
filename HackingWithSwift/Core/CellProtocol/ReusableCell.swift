//
//  ReusableCell.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/12/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

public protocol ReusableCell {
    static var reuseIdentifier: String { get }
}

public extension ReusableCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
