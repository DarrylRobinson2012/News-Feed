//
//  NewsAPIClient.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/20/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import Foundation

class NewsAPIClient {
   
    let ApiKey = "e18c31ae2ee1459da5bc31a195a703ec"
    
    let baseUrl =  URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(ApiKey)")
    
    let downloader = JSONDownloader()
    
    typealias  Articles = [[String: Any]]
    typealias NewsCompletionHandler = (News?, NewsError?) -> Void

  func getNews(completion: @escaping NewsCompletionHandler) {
        
        guard let url = URL(string: baseUrl)else {
            completion(nil, .invalidUrl)
            
            return
        }
        
        let request = URLRequest(url: url)

        let task = downloader.jsonTask(with:request) { json, error in
            DispatchQueue.main.async {
                guard let json = json else {
                    completion(nil, error)
                    return
                }
                
                guard let articles = News(json: json) else {
                    completion(nil, .jsonParsingFailure(message: "JSON data does not contain results"))
                    print(json)
                    return
                }
                
                completion(articles, nil)
            }
        }
        
        task.resume()
        
    }
}
    
    

    

    
    

