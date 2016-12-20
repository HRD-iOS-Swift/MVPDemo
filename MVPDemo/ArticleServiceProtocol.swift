//
//  ArticleServiceProtocol.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import Foundation

protocol ArticleServiceProtocol: class {
    
    // Response Data
    func responseDataFromGet(article : [Article])
    
    // Response Data from Post
    func responseDataFromPost(data : [String : Any])
}
