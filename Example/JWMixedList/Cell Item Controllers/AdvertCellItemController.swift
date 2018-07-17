//
//  AdvertCellItemController.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JWMixedList

class AdvertCellItemController: CollectionCellItemController {
    var data: Decodable
    
    var coordinator: Coordinator
    
    var bundle: Bundle {
        return .main
    }
    
    var cellClass: AnyClass {
        return AdvertCell.self
    }
    
    init(data: Advert, coordinator: Coordinator) {
        self.data = data
        self.coordinator = coordinator
    }
    
    func configureCell(cell: UICollectionViewCell) {
        /// Configure your cell
    }
    
    func didSelect() {
        coordinator.navigate(to: EmptyViewController())
    }

    func cellIdentifierForSizeClass(sizeClass: UIUserInterfaceSizeClass) -> String {
        /// This is a redundant switch case, but used to illustrate how you can return
        /// different cellIdentifiers based on the size class.
        switch sizeClass {
        case _:
            return "AdvertCell"
        }
    }
    
    func sizeForItem(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 90)
    }
    
    
}
