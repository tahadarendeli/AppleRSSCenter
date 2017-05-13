//
//  AlbumDescriptionViewController.swift
//  ClassProject
//
//  Created by Mentor on 11.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit
import Kingfisher

class DescriptionViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var selectedContent : Content?
    let summaryDataSource = ContentDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadHTMLString(selectedContent!.content, baseURL: nil)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}
