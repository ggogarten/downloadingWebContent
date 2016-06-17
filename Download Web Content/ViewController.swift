//
//  ViewController.swift
//  Download Web Content
//
//  Created by George Gogarten on 6/17/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.stackoverflow.com")!
        
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            
            // Will happen when task completes
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                print(webContent)
                
                
            } else {
                
                // Show error message
                
                
            }
            
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

