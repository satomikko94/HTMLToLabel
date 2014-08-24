//
//  ViewController.swift
//  HTMLToLabel
//
//  Created by satomikko94 on 8/23/14.
//  Copyright (c) 2014 Satomi Moriki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var htmlLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showHTMLText()
        
    }
    
    func showHTMLText() {
        var htmlText = "空は<font color=\"blue\">青い</font>。<br>" +
                       "An apple is <font color=\"red\">red</font>."
        
        var err:NSError?
        self.htmlLabel.attributedText = NSAttributedString(
                          data: htmlText.dataUsingEncoding(NSUnicodeStringEncoding, allowLossyConversion: true),
                       options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType],
            documentAttributes: nil,
                         error: &err)
        self.htmlLabel.font = UIFont(name: "System", size: 14)
    }
    
}

