//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Sabath  Rodriguez on 3/24/20.
//  Copyright © 2020 Atomos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
            if let detail = detailItem {
            self.title = detail.title!.description
            if let blogWebView = self.webView {
                blogWebView.loadHTMLString(detail.content!.description, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

