//
//  AttractionDetailViewController.swift
//  TableViewStory
//
//  Created by JHJG on 2016. 7. 13..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class AttractionDetailViewController: UIViewController {

    var webSite: String?
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let address = webSite {
            let webURL = NSURL(string: address)
            print(webURL?.absoluteString)
            let urlRequest = NSURLRequest(URL: webURL!)
            webView.loadRequest(urlRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
