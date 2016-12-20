//
//  Pagination.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import Foundation

class Pagination {
    
    // Can't init is singleton
    private init() { }
    
    //MARK: Shared Instance
    
    static let sharedInstance: Pagination = Pagination()
    
    //MARK: Local Variable
    var totalPage : Int = 0
    var currentPage : Int = 0
}
