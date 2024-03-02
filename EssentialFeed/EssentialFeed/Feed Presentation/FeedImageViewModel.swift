//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Animesh on 22/02/24.
//
public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
