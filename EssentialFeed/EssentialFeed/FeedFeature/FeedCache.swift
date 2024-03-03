//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Akanksha on 12/02/24.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
