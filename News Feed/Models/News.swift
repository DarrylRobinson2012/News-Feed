//
//  News.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import Foundation
import UIKit


struct News {

    var title: String
    let summary: String
    let author: String
    let date: String

    init(title: String, summary: String, author: String, date: String) {
        self.title = title
        self.summary = summary
        self.author = author
        self.date = date
    }
    
    
}




/*extension News{
    struct  key {
        static let title = "title"
        static let author = "author"
        static let summary = "description"
        static let date = "publishedAt"
       
    }
    
    init?(json:[String: AnyObject]) {
       guard let titleString = json[key.title] as? String,
        let summaryString = json[key.summary] as? String,
        let authorString = json[key.author] as? String,
        let dateValue = json[key.date] as? String,
        
        else {
            return nil
            
        }
        self.title = titleString
        self.summary = summaryString
        self.author = authorString
        self.date = dateValue
       
        
    }
}
*/
