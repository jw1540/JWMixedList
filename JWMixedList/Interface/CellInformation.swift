//
//  CellInformation.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import UIKit

public protocol CellInformation {
    
    /// The bundle in which your nib is located.
    var bundle: Bundle { get }
    
    /// The class of the cell, useful if you don't have a nib and want
    /// to register your cell without it.
    var cellClass: AnyClass { get }
    
    
    /// The cell identifier, you can switch over the sizeClass and return a different
    /// identifier if you use different nibs for different layouts, i.e. grids and lists
    /// on compact vs regular.
    ///
    /// - Parameter sizeClass: the size class of the device.
    /// - Returns: the reuse identifier of the cell.
    func cellIdentifierForSizeClass(sizeClass: UIUserInterfaceSizeClass) -> String
    
    
    /// Used to build the size of the cell.
    ///
    /// - Parameters:
    ///   - collectionView: the view we're displaying on
    ///   - collectionViewLayout: the collection view's layout, useful to pull out any properties.
    /// - Returns: a CGSize of the cell.
    func sizeForItem(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout) -> CGSize
}
