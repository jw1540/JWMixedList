//
//  ImageCellItemController.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JWMixedList

class ImageCellItemController: CollectionCellItemController {
    var data: Decodable?
    
    var collectionView: UICollectionView?
    
    var coordinator: Coordinator
    
    var bundle: Bundle {
        return .main
    }
    
    var cellClass: AnyClass {
        return ImageCell.self
    }
    
    init(data: Image, coordinator: Coordinator) {
        self.data = data
        self.coordinator = coordinator
    }
    
    func configureCell(cell: UICollectionViewCell) {
        /// configure cell
    }
    
    func didSelect() {
        coordinator.navigate(to: EmptyViewController())
    }

    func cellIdentifierForSizeClass(sizeClass: UIUserInterfaceSizeClass) -> String {
        return "ImageCell"
    }
    
    func sizeForItem(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
    func didUpdate(to object: Decodable) {
        self.data = object
    }
}
