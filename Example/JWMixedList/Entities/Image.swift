//
//  Image.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

struct Image: Decodable {
    let imageURL: URL
    
    init(url: URL) {
        self.imageURL = url
    }
}
