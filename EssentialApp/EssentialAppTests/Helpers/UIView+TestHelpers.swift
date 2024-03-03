//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Animesh on 02/03/24.
//


import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
