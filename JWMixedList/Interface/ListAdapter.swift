//
//  ListAdapter.swift
//  Employee App
//
//  Created by Joe Williams on 14/01/2019.
//  Copyright © 2019 Joe Williams. All rights reserved.
//

import UIKit

public class ListAdapter: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    public weak var dataSource: ListAdapterDataSource?
    
    private var itemControllers: [SectionCollectionController] = []
    
    public weak var collectionView: UICollectionView? {
        didSet {
            self.itemControllers = dataSource!.objectsForListAdapter(adapter: self).compactMap({ item -> SectionCollectionController? in
                return dataSource?.controllerForObject(object: item)
            })
            
            self.itemControllers.forEach({ $0.registerCells(on: collectionView!) })
            self.collectionView?.dataSource = self
            self.collectionView?.delegate = self
            reload()
        }
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource?.objectsForListAdapter(adapter: self).count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.itemControllers[indexPath.item].dequeueCell(at: indexPath, on: collectionView)
        
        let controller = self.itemControllers[indexPath.item]
                
        controller.didUpdate(to: dataSource!.objectsForListAdapter(adapter: self)[indexPath.item])
        
        controller.configureCell(cell: cell)
        
        return cell
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.itemControllers[indexPath.item].sizeForItem(collectionView: collectionView, layout: collectionViewLayout)
    }
    
    private func reload() {
        collectionView?.reloadData()
    }
    
}
