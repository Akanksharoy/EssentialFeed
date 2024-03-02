//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Animesh on 12/02/24.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
