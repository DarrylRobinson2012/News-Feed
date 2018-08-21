//
//  NewsDetailController.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import UIKit

class NewsDetailController: UITableViewController {
    
    var news: News?
    
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var UrlButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        let news = News(title: "President Trump asks SEC to study abolishing quarterly earnings reports", summary: "President says requiring companies to report results twice a year rather than four times would save money and allow greater flexibility.", author: "Chris Isidore", date: "2018-08-17T17:17:40Z")
        
        let viewModel = NewsViewModel(model: news)
        configureView(using: viewModel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureView(using viewModel: NewsViewModel) {
        summaryLabel.text = viewModel.summary
        authorLabel.text = viewModel.author
        dateLabel.text = viewModel.date
    
    }
        
        
        
    
 
/*            let format = DateFormatter()
            format.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            let convertedDate = format.date(from: news.date)
            format.timeZone = TimeZone.current
            format.dateFormat = "yyyy-MM-dd H:mm"
            let localDateStr = format.string(from: convertedDate!)
            
            dateLabel.text = localDateStr
  */
        }
        
        


    

