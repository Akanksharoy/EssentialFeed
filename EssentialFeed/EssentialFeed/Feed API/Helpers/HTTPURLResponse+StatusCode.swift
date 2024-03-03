//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Animesh on 02/03/24.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}