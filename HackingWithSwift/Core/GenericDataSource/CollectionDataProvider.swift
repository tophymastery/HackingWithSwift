//
//  CollectionDataProvider.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/12/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

public protocol CollectionDataProvider {
    associatedtype T
    
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> T?
    
    func updateItem(at indexPath: IndexPath, value: T)
}
