//
//  ViewController.swift
//  JWMixedList
//
//  Created by jw1540 on 07/17/2018.
//  Copyright (c) 2018 jw1540. All rights reserved.
//

import UIKit
import JWMixedList

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var itemControllers: [CollectionCellItemController] = []
    
    let factory = CollectionCellItemControllerFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemControllers.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemController = itemControllers[indexPath.item]
        
        let cell = itemController.dequeueCell(at: indexPath, on: collectionView)
        
        itemController.configureCell(cell: cell)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemControllers[indexPath.item].didSelect()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return itemControllers[indexPath.item].sizeForItem(collectionView: collectionView, layout: collectionViewLayout)
    }
    
    private func getData() {
        let data: [FeedDataType] = [
            .image(Image(url: URL(string: "some.url")!)),
            .advert(Advert(title: "another ad")),
            .text(Text(info: "Some information")),
            .image(Image(url: URL(string: "some.url")!)),
            .text(Text(info: "Some different information")),
            .advert(Advert(title: "One Advert")),
        ]
        
        itemControllers = factory.makeCollectionItemController(from: data, parentViewController: self)
        
        itemControllers.forEach({ $0.registerCells(on: collectionView!) })
        
        collectionView?.reloadData()
    }

}

