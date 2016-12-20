//
//  AddEditTableViewController.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import UIKit

class AddEditTableViewController: UITableViewController, ArticlePresentorProtocol {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var desciptionLabel: UITextField!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    var articlePresenter : ArticlePresentor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial
        articlePresenter = ArticlePresentor()
        // Set delegatge
        articlePresenter?.delegate = self
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let article = Article()
        article.title = titleLabel.text!
        article.description = desciptionLabel.text!
        
        let data = ["article" : article,
                    "image" : thumbnailImageView.image!] as [String : Any]
        
        articlePresenter?.saveData(data: data)
        
    }
    
    func responseFromPostWith(data: [String : Any]) {
        print("Post response===\(data)")
        _ = self.navigationController?.popViewController(animated: true)
    }
}
