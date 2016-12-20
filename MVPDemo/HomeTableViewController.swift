//
//  HomeTableViewController.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController, ArticlePresentorProtocol {

    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var footerIndicator: UIActivityIndicatorView!
    var articles = [Article]()
    
    // Presenter object
    var articlePresent : ArticlePresentor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initial
        articlePresent = ArticlePresentor()
        // Set delegatge
        articlePresent?.delegate = self
        // Call get data function
        articlePresent?.getData(page: 1, limit: 15)
        
        self.refreshControl?.addTarget(self, action: #selector(self.refreshHandler), for: .valueChanged)
    }
    
    func refreshHandler(){
        // Call get data function
        articles.removeAll()
        articlePresent?.getData(page: 1, limit: 15)
    }
    
    // Conform protocol method
    func responseFromGetWith(article: [Article]) {
        
        // End refreshing
        self.refreshControl?.endRefreshing()
        self.footerView.isHidden = true
        self.footerIndicator.stopAnimating()
        self.articles += article
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ArticleTableViewCell.cellIdentifier, for: indexPath) as! ArticleTableViewCell
        cell.configureCell(article: self.articles[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print("\(Pagination.sharedInstance.currentPage) == \(Pagination.sharedInstance.totalPage)")
        
        // indicator stop loading
        if !self.footerIndicator.isAnimating {
            
            // last cell > or = amount of articles
            if indexPath.row >= self.articles.count - 1 {
                
                if Pagination.sharedInstance.currentPage < Pagination.sharedInstance.totalPage {
                    self.footerView.isHidden = false
                    self.footerIndicator.startAnimating()
                    Pagination.sharedInstance.currentPage += 1
                    self.articlePresent?.getData(page:  Pagination.sharedInstance.currentPage, limit: 15)
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let moreRowAction = UITableViewRowAction(style: .normal, title: "More", handler:{action, indexpath in
            
        })
        
        moreRowAction.backgroundColor = UIColor(red: 0.298, green: 0.851, blue: 0.3922, alpha: 1.0);
        
        let deleteRowAction = UITableViewRowAction(style: .destructive, title: "Delete", handler:{action, indexpath in
            
            self.articlePresent?.deleteData(articleId: self.articles[indexPath.row].id!,completion: { (status) in
                if status == true {
                    self.articles.remove(at: indexPath.row)
                    self.tableView.deleteRows(at: [indexPath], with: .fade)
                }
            })
        })
        
        return [deleteRowAction, moreRowAction];
    }
}
