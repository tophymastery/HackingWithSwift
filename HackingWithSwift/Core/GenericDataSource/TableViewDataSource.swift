//
//  CollectionDataSource.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/12/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

public typealias TableViewItemSelectionHandlerType = (IndexPath) -> Void

open class TableViewDataSource<Provider: TableViewDataProvØider, Cell: UITableViewCell>:
    NSObject,
    UITableViewDataSource,
    UITableViewDelegate
    where Cell: ConfigurableCell, Provider.T == Cell.T
{
    public var tableViewItemSelectionHandler: TableViewItemSelectionHandlerType?
    
    let provider: Provider
    let tableView: UITableView
    
    init(tableView: UITableView, provider: Provider) {
        self.tableView = tableView
        self.provider = provider
        super.init()
        setUp()
    }
    
    func setUp() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return provider.numberOfSections()
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return provider.numberOfItems(in: section)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as? Cell else {
            return UITableViewCell()
        }
        let item = provider.item(at: indexPath)
        if let item = item {
            cell.configure(item, at: indexPath)
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectItemAt indexPath: IndexPath) {
        tableViewItemSelectionHandler?(indexPath)
    }
}
