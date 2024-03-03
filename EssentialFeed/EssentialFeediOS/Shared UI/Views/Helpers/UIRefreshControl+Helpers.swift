//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Animesh on 03/03/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
