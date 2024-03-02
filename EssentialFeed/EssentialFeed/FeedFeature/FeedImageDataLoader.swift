//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Animesh on 02/03/24.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
