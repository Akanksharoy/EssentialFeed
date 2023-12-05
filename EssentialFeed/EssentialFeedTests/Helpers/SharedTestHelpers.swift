//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Animesh on 30/11/23.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
