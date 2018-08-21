//
//  HeadlineDataSource.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import UIKit

class HeadlineDataSource: NSObject, UITableViewDataSource {
    
    private var cnn = [News]()
  
    
    func update(with news: [News]) {
        cnn = news
    }
    //MARK: DATASOURCE
    
   /* func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionTitles
    }
    */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cnn.count
            
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let headlineCell = tableView.dequeueReusableCell(withIdentifier: "HeadlineCell")! as UITableViewCell
        
        
        let news = cnn[indexPath.row]
        headlineCell.textLabel?.text = news.title
        headlineCell.textLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        headlineCell.textLabel?.adjustsFontForContentSizeCategory = true

        return headlineCell
        
    }
    
    
    
  
    
    //Mark: Helper Methods
    
    func news(at indexPath: IndexPath) -> News {
        return cnn[indexPath.row]
        
    }
    
    
    
    
    
}
