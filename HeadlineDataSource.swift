//
//  HeadlineDataSource.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import UIKit

class HeadlineDataSource: NSObject, UITableViewDataSource {
    
    let cnn = FakeNews()


    
   
    
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
        return 1
            
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let headlineCell = tableView.dequeueReusableCell(withIdentifier: "HeadlineCell", for: indexPath) as? HeadlLineCell else { fatalError() }
        
        let news = cnn
        
        headlineCell.textLabel?.text = news.title

        return headlineCell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    //Mark: Helper Methods
    
    func news(at indexPath: IndexPath) -> FakeNews {
        return cnn
        
    }
    
    
    
    
    
}
