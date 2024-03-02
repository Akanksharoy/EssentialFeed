//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Animesh on 22/02/24.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
