//
//  CellItemControllerFactory.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JWMixedList

class CollectionCellItemControllerFactory {
    
    func makeCollectionItemController(from items: [FeedDataType], parentViewController: UIViewController) -> [CollectionCellItemController] {
        let basicCoordinator = BasicCoordinator(viewController: parentViewController)
        return items.flatMap({ feedType -> CollectionCellItemController? in
            switch feedType {
            case .advert(let advert):
                return AdvertCellItemController(
                    data: advert,
                    coordinator: basicCoordinator
                )
                
            case .image(let image):
                return ImageCellItemController(
                    data: image,
                    coordinator: basicCoordinator
                )
                
            case .text(let text):
                return TextCellItemController(
                    data: text,
                    coordinator: basicCoordinator
                )
            }
        })
    }
    
}
