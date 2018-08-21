//
//  HeadLinesListController.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import UIKit

class HeadLinesListController: UITableViewController {

    let dataSource = HeadlineDataSource()
    //let client = NewsAPIClient()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        dataSource.update(with: [FakeNews.news])
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    override func viewWillAppear(_ animated: Bool) {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowNews" {
            if let indexPath = tableView.indexPathForSelectedRow {
                var news = dataSource.news(at: indexPath)
                
                guard let navigationController = segue.destination as?
                    UINavigationController, let newsDetailContoller = navigationController.topViewController as? NewsDetailController else { return }
                // something may go here
                navigationController.title = title
               
               
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
