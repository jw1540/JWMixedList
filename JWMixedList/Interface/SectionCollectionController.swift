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
    var itemControllers: [CollectionCellItemController] { get set }
}
