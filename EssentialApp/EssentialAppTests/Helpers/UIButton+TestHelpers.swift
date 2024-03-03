//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Akanksha on 22/12/23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
