//
//  CollectionCellItemController.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import UIKit

public protocol CollectionCellItemController: CollectionCellRegister {
    /// The data the individual cell is displaying. Must conform to Decodable,
    /// but doesn't need to implement it. This is to avoid any type erasure
    /// or some kind of thunk class with an associatedtype.
    var data: Decodable? { get set }
    
    /// The coordinator
    var coordinator: Coordinator { get set }
    
    /// the collection view we're in
    var collectionView: UICollectionView? { get set }
    
    /// The wrapper around cellForRowAt:, this is where you'll configure the cell.
    ///
    /// - Parameter cell: the raw cell type to be cast and configured.
    func configureCell(cell: UICollectionViewCell)
    
    /// The event handler for selection
    func didSelect()
    
    func didUpdate(to object: Decodable)
}
