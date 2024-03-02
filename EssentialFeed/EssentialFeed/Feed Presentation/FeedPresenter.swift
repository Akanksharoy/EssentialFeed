//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Animesh on 22/02/24.
import Foundation

public final class FeedPresenter {
    public static var title: String {
        NSLocalizedString("FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view")
    }
}
