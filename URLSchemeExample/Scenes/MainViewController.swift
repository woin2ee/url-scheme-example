//
//  MainViewController.swift
//  URLSchemeExample
//
//  Created by Jaewon on 2022/08/08.
//

import UIKit

final class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapTransferMapAppButton(_ sender: UIButton) {
        guard
            let url = URL.init(string: "http://maps.apple.com/?ll=50.894967,4.341626"),
            UIApplication.shared.canOpenURL(url)
        else {
            print("Fail")
            return
        }
        
        UIApplication.shared.open(
            url,
            options: [ : ],
            completionHandler: nil
        )
    }
}
