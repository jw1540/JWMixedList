//
//  SectionCollectionController.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import UIKit

/// Used to handle sectioned collection view controllers, whereby this interface
/// is responsible for a section, and the item controllers are responsible
/// for individual items of content.
public protocol SectionCollectionController: CollectionCellRegister {

    var collectionView: UICollectionView? { get set }

    func configureCell(cell: UICollectionViewCell)
    func cellForItem(at indexPath: IndexPath) -> UICollectionViewCell
    func didUpdate(to object: CollectionDiffable)
}

public protocol Diffable {
    func diffIdentifier() -> NSObjectProtocol
    func isEqual(to object: CollectionDiffable) -> Bool
}

public typealias CollectionDiffable = Diffable & Decodable

extension SectionCollectionController {
    public func numberOfItems() -> Int {
        return 1
    }
    
    public func controllerForObject(object: Decodable) -> SectionCollectionController? {
        return nil
    }

}
