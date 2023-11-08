//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Akanksha on 07/11/23.
//

import Foundation
import XCTest
class RemoteFeedLoader{
    var client:HTTPClient
    init(client: HTTPClient) {
        self.client = client
    }
    func load(){
        client.get(from: URL(string: "https://a-url.com")!)
    }
}
protocol HTTPClient {
    func get(from url:URL)
}
class HTTPClientSpy:HTTPClient{
    var requestedURL:URL?
    func get(from url:URL){
        requestedURL = url
    }
}
class RemoteFeedLoaderTests:XCTestCase{
    func test_init_doesNotRequestDataFromURL(){
        let client = HTTPClientSpy()
        let _ = RemoteFeedLoader(client: client)
       
        XCTAssertNil(client.requestedURL)
    }
    func test_load_requestDataFromURL(){
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(client: client)
        sut.load()
        XCTAssertNotNil(client.requestedURL)
    }
}
