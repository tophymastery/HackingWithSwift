//
//  NavigatorDelegate.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

class NavigatorDelegate: NSObject, WKNavigationDelegate {
    let allowedSites = ["apple.com", "hackingwithswift.com"]
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard
            let host = navigationAction.request.url?.host,
            allowedSites.contains(where: host.contains) else {
                decisionHandler(.cancel)
                return
        }
        
        decisionHandler(.allow)
    }
}
