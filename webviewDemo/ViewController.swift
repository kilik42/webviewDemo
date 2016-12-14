//
//  ViewController.swift
//  webviewDemo
//
//  Created by marvin evins on 12/13/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        let url = URL(string: "https://www.udemy.com/courses")
//        
//        webView.loadRequest(URLRequest(url: url!))
        
        if let url = URL(string: "https//www.udemy.com/courses/"){
                let request = NSMutableURLRequest(url: url)
            
            let job = URLSession.shared.dataTask(with: request as URLRequest){
                result, response, error in
                
                if error != nil {
                    print(error)
                    
                } else {
                    if let data = result{
                        let actualData = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        
                        print(actualData)
                    }
                }
            }
            job.resume()

        }
        print("hello world")
    }

   

}

