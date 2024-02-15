//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Animesh on 12/02/24.
//

import Foundation

public protocol FeedImagedataLoader {
    func loadImageData(from url: URL) throws -> Data
}
