//
//  BasicCoordinator.swift
//  JWMixedList_Example
//
//  Created by Joe Williams on 17/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JWMixedList

class BasicCoordinator: Coordinator {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func navigate(to destination: UIViewController) {
        viewController?.navigationController?.pushViewController(destination, animated: true)
    }
}
