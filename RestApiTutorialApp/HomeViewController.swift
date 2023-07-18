//
//  HomeViewController.swift
//  RestApiTutorialApp
//
//  Created by kingSemih on 18.07.2023.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("START")
        
        let baseURL = URL(string: "https://jsonplaceholder.typicode.com/")
        let postsURL = URL(string: "posts",relativeTo: baseURL)
        
        let request = URLRequest(url: postsURL!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task =  session.dataTask(with: request) {
            data , response , error in
            
            let jsonData = try! JSONSerialization.jsonObject(with: data!,options: [])
            print("check data \(jsonData)")
        }
        
        
        
        task.resume()
        
        
        
        
        
    }
}
