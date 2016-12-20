
//
//  ArticleService.swift
//  MVPDemo
//
//  Created by Kokpheng on 12/20/16.
//  Copyright © 2016 KSHRD. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleService {
    
    // ArticleServiceProtocol Delegate Object
    var delegate : ArticleServiceProtocol?
    
    // Get data function
    func fectchData(page : Int, limit: Int) {
        print("fectchData")
        Alamofire.request("http://120.136.24.174:1301/v1/api/articles?page=\(page)&limit=\(limit)", method: .get).responseJSON { (response) in
            
            let jsonResponse = JSON(data: response.data!)
            
            var pagination = jsonResponse["PAGINATION"].dictionary
            Pagination.sharedInstance.totalPage = (pagination?["TOTAL_PAGES"]?.int!)!
            Pagination.sharedInstance.currentPage = (pagination?["PAGE"]?.int!)!
            
            var articles = [Article]()
            
            for article in jsonResponse["DATA"].array! {
                articles.append(Article(jsonArticle: article))
            }
            
            // add data to ArticleServiceProtocol's delegate
            self.delegate?.responseDataFromGet(article: articles)
        }
    }
    
    func saveData(article: [String : Any]) {
        let image = article["image"] as! UIImage
        let articleModel = article["article"] as! Article
        self.uploadImage(image: image) { (url) in
            articleModel.image = url
            self.uploadData(article: articleModel, completion: { (response) in
                self.delegate?.responseDataFromPost(data: response.result.value! as! [String : Any])
            })
        }
        
    }
    
    private func uploadImage(image : UIImage, completion: @escaping (_ result: String) -> Void){
        Alamofire.upload(multipartFormData: { (multipartFormData) in
            multipartFormData.append(UIImageJPEGRepresentation(image, 0.5)!, withName: "FILE", fileName: ".jpg",mimeType: "image/jpeg")
            
        }, to: "http://120.136.24.174:1301/v1/api/uploadfile/single") { (encodingResult) in
            switch encodingResult {
            case .success(let upload, _, _):
                upload.responseJSON { response in
                    debugPrint(response)
                    let data = response.result.value as! [String : Any]
                    let url = data["DATA"] as! String
                    completion(url)
                }
            case .failure(let encodingError):
                print(encodingError)
            }
        }
    }
    
    private func uploadData(article : Article, completion: @escaping (_ result: DataResponse<Any>) -> Void){
        Alamofire.request("http://120.136.24.174:1301/v1/api/articles", method: .post,parameters: article.convertToObject(),
            encoding: JSONEncoding.default).responseJSON { (response) in
            completion(response)
        }
    }
    
    func deleteDataFromServer(articleId: Int, completion: @escaping (_ status: Bool) -> Void){
        Alamofire.request("http://120.136.24.174:1301/v1/api/articles/\(articleId)", method: .delete).responseJSON { (response) in
          
            let responseData = response.result.value as! [String: Any]
            let code = responseData["CODE"] as! String
                
             if code == "9999"{
                completion(false)
             }else{
                completion(true)
            }
        }
    }
}
