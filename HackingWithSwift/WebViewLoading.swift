//
//  WebViewLoading.swift
//  HackingWithSwift
//
//  Created by Akadet on 12/11/18.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let request = URLRequest(url: url)
        load(request)
    }
}
