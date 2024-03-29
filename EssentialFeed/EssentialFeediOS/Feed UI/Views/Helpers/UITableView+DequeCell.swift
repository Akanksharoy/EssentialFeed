//
//  UITableView+DequeCell.swift
//  EssentialFeediOS
//
//  Created by Animesh on 21/02/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
