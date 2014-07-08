//
//  ViewController.swift
//  Swift AFNetworking
//
//  Created by Roeun Mac Mini on 27/6/2014.
//  Copyright (c) 2014 gguser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet var textView : UITextView
  
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    let manager = AFHTTPRequestOperationManager()
    manager.GET("http://assignment.gae.golgek.mobi/api/v10/items", parameters: nil, success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) in
      
      println(responseObject)
      self.textView.text = responseObject.description;
      
      }, failure: { (operation: AFHTTPRequestOperation!, error: NSError!) in
        
        println(error.localizedDescription)
        
      })
    

    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

