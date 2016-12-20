//
//  Article.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import Foundation
import SwiftyJSON

 class Article{
    var id : Int?
    var title:String?
    var image:String?
    var description:String?
    
    init() {
        self.id = 0
        self.title = ""
        self.image = ""
        self.description = ""
    }
    
    init(jsonArticle : JSON) {
        self.id = jsonArticle["ID"].int
        self.title = jsonArticle["TITLE"].string
        self.image = jsonArticle["IMAGE"].string
        self.description = jsonArticle["DESCRIPTION"].string
        
    }
    
    func convertToObject() -> [String : Any] {
       
        let data = ["TITLE": self.title!,
                    "DESCRIPTION": self.description!,
                    "AUTHOR": 1,
                    "CATEGORY_ID": 1,
                    "STATUS": "1",
                    "IMAGE": self.image!] as [String : Any]
        return data
    }
}
