//
//  ArticlePresentor.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import UIKit

class ArticlePresentor {
    
    // ArticlePresentorProtocol's delegate
    var delegate : ArticlePresentorProtocol?
    
    // ArticleService object
    var articleService : ArticleService?
    
    init() {
        // Initialize Article Service
        articleService = ArticleService()
        
        // Set delegate
        articleService?.delegate = self
    }
    
    // Get Data function
    func getData(page: Int, limit: Int) {
        articleService?.fectchData(page: page, limit: limit)
    }
    
    // Save Data function
    func saveData(data : [String : Any]) {
        articleService?.saveData(article: data)
    }
    
    func deleteData(articleId: Int, completion: @escaping (_ status: Bool) -> Void){
        articleService?.deleteDataFromServer(articleId: articleId, completion: { (status) in
            completion(status)
        })
    }
}

extension ArticlePresentor : ArticleServiceProtocol{
    
    // Conform Protocol method
    func responseDataFromGet(article: [Article]) {
        self.delegate?.responseFromGetWith(article: article)
    }
    
    // Conform Protocol optional method
    func responseDataFromPost(data: [String : Any]) {
        self.delegate?.responseFromPostWith(data: data)
    }
}
