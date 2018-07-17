//
//  TableCellRegister.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import UIKit

public protocol TableCellRegister: CellInformation { }

extension TableCellRegister {
    
    /// Abstracted away so you don't have to constantly rewrite this same code.
    /// looks for a nib, and if it can't find it assumes a class.
    ///
    /// - Parameter tableView: the table view we're registering the cell on.
    public func registerCells(on tableView: UITableView) {
        let cellIdentifier = cellIdentifierForSizeClass(sizeClass: tableView.traitCollection.horizontalSizeClass)
        if bundle.path(forResource: cellIdentifier, ofType: "nib") != nil {
            let nib = UINib(nibName: cellIdentifier, bundle: bundle)
            tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        } else {
            tableView.register(cellClass.self, forCellReuseIdentifier: cellIdentifier)
        }
    }
    
    /// Abstracting away the dequeue mechanism.
    ///
    /// - Parameters:
    ///   - indexPath: index path of the cell
    ///   - tableView: the table view.
    /// - Returns: the cell we wish to display
    public func dequeueCell(at indexPath: IndexPath, on tableView: UITableView) -> UITableViewCell {
        let cellIdentifier = cellIdentifierForSizeClass(sizeClass: tableView.traitCollection.horizontalSizeClass)
        return tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
    }
}
