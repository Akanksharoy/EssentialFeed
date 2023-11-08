//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Akanksha on 07/11/23.
//

import Foundation
enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}
protocol FeedLoader{
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
