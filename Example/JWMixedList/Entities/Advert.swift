//
//  Advert.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

struct Advert: Decodable {
    let title: String
    
    init(title: String) {
        self.title = title
    }
}
