//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Animesh on 22/02/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
