//
//  HeadlinerViewModel.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/21/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import Foundation

struct HeadlinerViewModel {
    let headliner: String
    
    init(news: News) {
        self.headliner = news.title
    }
}
