//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Animesh on 14/11/23.
//

import XCTest
import EssentialFeed

class URLSessionHTTPClient {
    private let session: URLSession

    init(session: URLSession) {
        self.session = session
    }

    func get(from url: URL, completion: @escaping(HTTPClientResult)-> Void) {
        session.dataTask(with: url) { _, _, error in
            if let error  = error {
                completion(.failure(error))
            }
        }.resume()
    }
}

class URLSessionHTTPClientTests: XCTestCase {
    
    func test_getFromURL_resumesDataTaskWithURL() {
        let url = URL(string: "http://any-url.com")!
        let session = URLSessionSpy()
        let task = URLSessionDataTaskSpy()
        session.stub(url: url, task: task)
        let sut = URLSessionHTTPClient(session: session)
        sut.get(from: url){_ in }
        XCTAssertEqual(task.resumeCallCount, 1)
    }
    func test_getFromURL_failsOnRequestError() {
        let url = URL(string: "http://any-url.com")!
        let error = NSError(domain: "any error", code: 1)
        let session = URLSessionSpy()
        let task = URLSessionDataTaskSpy()
        session.stub(url: url, error: error)
        let sut = URLSessionHTTPClient(session: session)
        let exp = expectation(description: "Wait for completion")
        sut.get(from: url){
            result in
            switch result{
            case let .failure(receivedError as NSError):
                XCTAssertEqual(receivedError, error)
            default:
                XCTFail("Expected Failure with error \(error) got \(result) instead")
                exp.fulfill()
            }
        }
        wait(for: [exp], timeout: 1.0)
        XCTAssertEqual(task.resumeCallCount, 1)
    }

    // MARK: - Helpers
    
    private class URLSessionSpy: URLSession {
        private struct Stub{
            let task:URLSessionDataTask
            let error:Error?
        }
        private var stubs = [URL:Stub]()
        func stub(url:URL, task:URLSessionDataTask = FakeURLSessionDataTask(), error:Error? = nil){
            stubs[url] = Stub(task: task, error: error)
        }
        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            guard let stub = stubs[url] else {
                fatalError("Couldn't find stubs for the given URL")
            }
            completionHandler(nil, nil, stub.error)
            return stub.task
        }
        
    }

    private class FakeURLSessionDataTask: URLSessionDataTask {}
    private class URLSessionDataTaskSpy: URLSessionDataTask {
        var resumeCallCount = 0
        override func resume() {
            resumeCallCount += 1
        }
    }

}
