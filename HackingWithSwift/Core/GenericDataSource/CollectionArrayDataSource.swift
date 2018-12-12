//
//  CollectionArrayDataSource.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/12/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

open class CollectionArrayDataSource<T, Cell: UICollectionViewCell>: CollectionDataSource<ArrayDataProvider<T>, Cell>
    where Cell: ConfigurableCell, Cell.T == T
{
    // MARK: - Lifecycle
    public convenience init(collectionView: UICollectionView, array: [T]) {
        self.init(collectionView: collectionView, array: [array])
    }
    
    public init(collectionView: UICollectionView, array: [[T]]) {
        let provider = ArrayDataProvider(array: array)
        super.init(collectionView: collectionView, provider: provider)
    }
    
    // MARK: - Public Methods
    public func item(at indexPath: IndexPath) -> T? {
        return provider.item(at: indexPath)
    }
    
    public func updateItem(at indexPath: IndexPath, value: T) {
        provider.updateItem(at: indexPath, value: value)
    }
}
