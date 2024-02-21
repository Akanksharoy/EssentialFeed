//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Animesh on 21/02/24.
//

struct FeedErrorViewModel {
    let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
