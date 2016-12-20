//
//  ArticleTableViewCell.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import UIKit
import Kingfisher

class ArticleTableViewCell: UITableViewCell {

    public static var cellIdentifier = "articleCell"
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(article : Article) {
       self.titleLabel.text = article.title
        self.descriptionLabel.text = article.description
        self.thumbnailImageView.kf.setImage(with: URL(string: article.image!), placeholder: #imageLiteral(resourceName: "github-character"))
    }
}
