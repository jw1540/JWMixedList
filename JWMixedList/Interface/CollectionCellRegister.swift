//
//  CollectionCellRegister.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import Foundation

public protocol CollectionCellRegister: CellInformation { }

extension CollectionCellRegister {
    
    /// Abstracted away so you don't have to constantly rewrite this same code.
    /// looks for a nib, and if it can't find it assumes a class.
    ///
    /// - Parameter collectionView: the collection view we're registering the cell on.
    public func registerCells(on collectionView: UICollectionView) {
        let cellIdentifier = cellIdentifierForSizeClass(sizeClass: collectionView.traitCollection.horizontalSizeClass)
        if bundle.path(forResource: cellIdentifier, ofType: "nib") != nil {
            let nib = UINib(nibName: cellIdentifier, bundle: bundle)
            collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
        } else {
            collectionView.register(cellClass.self, forCellWithReuseIdentifier: cellIdentifier)
        }
    }
    
    
    /// Abstracting away the dequeue mechanism.
    ///
    /// - Parameters:
    ///   - indexPath: index path of the cell
    ///   - collectionView: the collection view.
    /// - Returns: the cell we wish to display
    public func dequeueCell(at indexPath: IndexPath, on collectionView: UICollectionView) -> UICollectionViewCell {
        let cellIdentifier = cellIdentifierForSizeClass(sizeClass: collectionView.traitCollection.horizontalSizeClass)
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
    }
}
