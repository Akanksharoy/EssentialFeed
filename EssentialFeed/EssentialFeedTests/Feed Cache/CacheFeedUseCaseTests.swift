//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Animesh on 20/11/23.
//

import Foundation
import XCTest
import EssentialFeed
class LocalFeedLoader{
    private let store:FeedStore
    init(store:FeedStore){
        self.store = store
    }
    func save(items:[FeedItem]){
        store.deleteCachedFeed()
    }
    
}
class FeedStore {
    var deleteCachedFeedCallCount = 0
    
    func deleteCachedFeed(){
        deleteCachedFeedCallCount += 1
    }
}
class CacheFeedUseCaseTests:XCTestCase {
    func  test_init_doesNotDeleteCacheUponCreation(){
        let (store , _) = makeSUT()
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
    func  test_save_requestsCacheDeletion(){
        let (store , sut) = makeSUT()
        let items = [uniqueItem(), uniqueItem()]
        sut.save(items: items)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 1)
    }
    
    //MARK: HELPERS
    
    func makeSUT() -> (store:FeedStore, sut:LocalFeedLoader){
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)
        return (store, sut)
    }
    func uniqueItem() -> FeedItem{
        return FeedItem(id: UUID(), description: "any", location: "any", imageURL: anyURL())
    }
    private func anyURL() -> URL {
        return URL(string: "http://any-url.com")!
    }
}
