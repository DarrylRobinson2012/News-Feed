//
//  NewsError.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/20/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import Foundation
enum NewsError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
    case invalidUrl
}
