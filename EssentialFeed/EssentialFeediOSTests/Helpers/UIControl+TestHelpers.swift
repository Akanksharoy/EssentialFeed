//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Animesh on 22/12/23.
//


import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
