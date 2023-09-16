//
//  TotoViewController.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/16.
//

import UIKit
import WebKit

class YourViewControllerName: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WKWebViewのインスタンスを作成
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        
        // WKWebViewのdelegateを設定
        webView.navigationDelegate = self
        
        if let url = URL(string: "https://toto.yahoo.co.jp/toto?usePaypayFlag=0&cd=013100&lastPayFlag=1&holdId=1396") {
            self.webView.load(URLRequest(url: url))
        }
    }
}


// WKNavigationDelegateのメソッド。ページの読み込みが完了したときに呼ばれる。
func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    // スクロールを制限するJavaScriptコード
    let scrollLimitScript = """
        window.scrollTo(0, 420);
           window.onscroll = function() {
               if (window.pageYOffset > 1400) { // 1400px未満になったら
                   window.scrollTo(0, 1400); // スクロール位置を300pxに固定
               }
           }
       """
    
    webView.evaluateJavaScript(scrollLimitScript, completionHandler: nil)
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

