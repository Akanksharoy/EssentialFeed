//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Akanksha on 07/11/23.
//

import Foundation
public struct FeedItem:Equatable{
    let id:UUID
    let description:String?
    let location:String?
    let imageURL:URL
}
