//
//  ListAdapterDataSource.swift
//  Employee App
//
//  Created by Joe Williams on 14/01/2019.
//  Copyright © 2019 Joe Williams. All rights reserved.
//

public protocol ListAdapterDataSource: class {
    func objectsForListAdapter(adapter: ListAdapter) -> [CollectionDiffable]
    func controllerForObject(object: Decodable) -> SectionCollectionController?
}
