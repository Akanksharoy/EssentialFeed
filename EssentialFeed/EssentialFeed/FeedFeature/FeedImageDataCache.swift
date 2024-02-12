//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Animesh on 12/02/24.
//

import Foundation
import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
