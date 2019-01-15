//
//  Coordinator.swift
//  JWMixedList
//
//  Created by Joe Williams on 17/07/2018.
//

import Foundation


/// A simple way of abstracting coordination logic out of Item Controllers.
public protocol Coordinator {
    
    /// The view controller we push or present from.
    var viewController: UIViewController? { get set }
    
    /// Called when we wish to push or present.
    ///
    /// - Parameter destination: the view controller we want to navigate to.
    func navigate(to destination: UIViewController)
}
