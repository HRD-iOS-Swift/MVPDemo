//
//  ArticlePresentorProtocol.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import Foundation

protocol ArticlePresentorProtocol: class  {
    // Response Article
    func responseFromGetWith(article : [Article])
    
    func responseFromPostWith(data : [String : Any])
}

extension ArticlePresentorProtocol{
    // Optional
    func responseFromGetWith(article : [Article]){}
    
    // Optional
    func responseFromPostWith(data : [String : Any]) {}
}
