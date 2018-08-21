//
//  NewsViewModel.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/21/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import Foundation

struct NewsViewModel {
    let title: String
    let summary: String
    let date: String
    let author: String
    
    init(model: News) {
        let realTitle = String(model.title)
        self.title = "\(realTitle)"
        
        let realSummary = String(model.summary)
        self.summary = "\(realSummary)"
        
        let realdate = String(model.date)
    
        self.date = "\(realdate)"
        
        let realAuthor = String(model.author)
        self.author = "\(realAuthor)"
        
        
}
}
