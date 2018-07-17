//
//  TextCellItemController.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JWMixedList

class TextCellItemController: CollectionCellItemController {
    var data: Decodable
    
    var coordinator: Coordinator
    
    var bundle: Bundle {
        return .main
    }
    
    var cellClass: AnyClass {
        return TextCell.self
    }
    
    init(data: Text, coordinator: Coordinator) {
        self.data = data
        self.coordinator = coordinator
    }
    
    func configureCell(cell: UICollectionViewCell) {
        let cell = cell as! TextCell
        let data = self.data as! Text
        cell.textLabel.text = data.info
        
    }
    
    func didSelect() {
        coordinator.navigate(to: EmptyViewController())
    }

    func cellIdentifierForSizeClass(sizeClass: UIUserInterfaceSizeClass) -> String {
        return "TextCell"
    }
    
    func sizeForItem(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
    
    
}
